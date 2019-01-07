#!C:\Perl64\bin\perl.exe
##!/usr/bin/perl
#
#zersh@mail.ru
#08/2017

use strict;
use warnings;
use Data::Dumper;
use LWP::UserAgent;

my $url = "http://www.codecguide.com/download_k-lite_codec_pack_full.htm";
my $last = "D:\\YandexDisk\\backup\\Chocolatey\\MyProject\\k-litecodecpackfull\\last";
my $SoftName = "K-Lite Codec Pack Full";

my $ua = LWP::UserAgent->new(
    agent   =>  "Chrome/Test",
    timeout =>  30,
);

my $resource = $ua->get($url);
my $content = $resource->content;

open (my $FH,"<test");
print $FH;

$FH =~ s@.*Version (.\d.\d.\d) .*Changelog:\<\/b\>.+?<ul>.+?<li>(U.*)Download.*(K-.+\.exe)@@;

exit;

#убираем все переводы строк
$content =~ s@\r?\n*@@g;
#грепаем нужные данные
#$content =~ s@.*Version (.\d.\d.\d) .*Changelog:\<\/b\>\<\/p><ul>.+?<li>(U.*)Download.*(K-.+\.exe).*MD5\<\/b\>: (.{32})@@;
#$content =~ s@.*Version (.\d.\d.\d) .*Changelog:\<\/b\>.+?<ul>.+?<li>(U.*)Download.*(K-.+\.exe).*MD5\<\/b\>: (.{32})@@;
$content =~ s@.*Version (.\d.\d.\d) .*Changelog:\<\/b\>.+?<ul>.+?<li>(U.*)Download.*(K-.+\.exe).*\n.*\n.*\n.*\n.*\n.*\n.*\n.*\n.*\n.*\n.*\n.*\n.*MD5\<\/b\>: (.{32}).*@@g;


my $version = $1; 
my $ChangeLog = $2; 
my $FileName = $3;
my $md5 = $4;

print "Avalible new version\n Vers: $version\n File: $FileName\n MD5: $md5\n ChangeLog:$ChangeLog\n";

$ChangeLog =~ s|<.+?>| |g;



#Продолжаем если версии не совпадают - иначе Выход.
my $lastvers = read_file("$last");
unless ($lastvers ne $version){
    printf "No need update!\n";
    exit 1;
}

print "Avalible new version\n Vers: $version\n File: $FileName\n MD5: $md5\n ChangeLog:$ChangeLog\n";

#exit;

#Пишем в файл ps1
my $cinst = 'tools\chocolateyInstall.ps1';
 
my $data = read_file($cinst);
$data =~ s/\$url = \'(.*)\'/\$url = \'http:\/\/files2.codecguide.com\/$FileName\'/g;
$data =~ s/\$checksum = \'(.*)\'/\$checksum = \'$md5\'/g;
print "==$data\n";

write_file($cinst, $data);

#exit;
#Пишем в файл nuspec
my $uspec = 'k-litecodecpackfull.nuspec';
my $data2 = read_file($uspec);
$data2 =~ s|<version>(.*\d+)</version>|<version>$version</version>|g;
$data2 =~ s|<summary>$SoftName (.*\d+)</summary>|<summary>$SoftName $version</summary>|g;
$data2 =~ s|<releaseNotes>(.*)</releaseNotes>|<releaseNotes>$ChangeLog</releaseNotes>|g;
write_file($uspec, $data2);


#Пишем новую версию
open (my $fh,">$last");
    print $fh "$version";
close $fh;

#Создаём пакет и пушим его на сервер
`cd D:\\YandexDisk\\backup\\Chocolatey\\MyProject\\k-litecodecpackfull && choco pack`;
#`choco push k-litecodecpackfull.$version.nupkg`;

exit;

sub read_file {
    my ($filename) = @_;
 
    open my $in, '<:encoding(UTF-8)', $filename or die "Could not open '$filename' for reading $!";
    local $/ = undef;
    my $all = <$in>;
    close $in;
 
    return $all;
}
 
sub write_file {
    my ($filename, $content) = @_;
 
    open my $out, '>:encoding(UTF-8)', $filename or die "Could not open '$filename' for writing $!";;
    print $out $content;
    close $out;
 
    return;
}
