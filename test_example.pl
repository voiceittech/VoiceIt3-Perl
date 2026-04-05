#!/usr/bin/perl
# Test script for VoiceIt3 Perl SDK

use strict;
use warnings;
require "./voiceIt3.pm";

my $apiKey = $ENV{'VOICEIT_API_KEY'} || die "Set VOICEIT_API_KEY env var\n";
my $apiToken = $ENV{'VOICEIT_API_TOKEN'} || die "Set VOICEIT_API_TOKEN env var\n";

my $vi = voiceIt3->new($apiKey, $apiToken);

print "CreateUser: " . $vi->createUser() . "\n";
print "GetAllUsers: " . $vi->getAllUsers() . "\n";
print "CreateGroup: " . $vi->createGroup("Test Group") . "\n";
print "GetAllGroups: " . $vi->getAllGroups() . "\n";
print "GetPhrases: " . $vi->getPhrases("en-US") . "\n";

print "\nAll API calls completed successfully!\n";
