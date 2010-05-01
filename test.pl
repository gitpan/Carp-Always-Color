#!/usr/bin/env perl
use strict;
use warnings;

use Carp::Always::Color::Term;
eval { die "foo" };
die $@;
