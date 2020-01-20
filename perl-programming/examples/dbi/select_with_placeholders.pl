#!/usr/bin/perl
use strict;
use warnings;

use DBI;

my $dbfile = "sample.db";

my $dbh = DBI->connect("dbi:SQLite:dbname=$dbfile");

my $id = shift;
$id = 1 if not defined $id;

my $sth = $dbh->prepare('SELECT fname, lname FROM people WHERE id <= ?');
$sth->execute($id);

while (my @row = $sth->fetchrow_array()) {
    print "$row[0] $row[1]\n";
}
