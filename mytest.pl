#!/usr/bin/perl -w
use strict;
use LWP 6.0;

my $url = 'https://www.yahoo.com';

my $browser = LWP::UserAgent->new;
my $response = $browser->get($url);
die "Error at $url\n ", $response->status_line, "\n Aborting"
    unless $response->is_success;

print "Whee, it worked!  I got that ",
    $response->content_type, " document!\n";

print "\n=========================================\n\n", $response->content, "\n\n";

