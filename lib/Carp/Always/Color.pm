package Carp::Always::Color;
BEGIN {
  $Carp::Always::Color::VERSION = '0.02';
}
BEGIN {
    if (-t *STDERR) {
        require Carp::Always::Color::Term;
    }
    else {
        require Carp::Always::Color::HTML;
    }
}

=head1 NAME

Carp::Always::Color - Carp::Always, but with color

=head1 VERSION

version 0.02

=head1 SYNOPSIS

  use Carp::Always::Color;

or

  perl -MCarp::Always::Color -e'sub foo { die "foo" } foo()'

=head1 DESCRIPTION

Stack traces are hard to read when the messages wrap, because it's hard to tell
when one message ends and the next message starts. This just colors the first
line of each stacktrace, based on whether it's a warning or an error. If
messages are being sent to a terminal, it colors them with terminal escape
codes, otherwise it colors them with HTML (ideas for more intelligent behavior
here are welcome).

=head1 BUGS

No known bugs.

Please report any bugs through RT: email
C<bug-carp-always-color at rt.cpan.org>, or browse to
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Carp-Always-Color>.

=head1 SEE ALSO

L<Carp::Always>

=head1 SUPPORT

You can find this documentation for this module with the perldoc command.

    perldoc Carp::Always::Color

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Carp-Always-Color>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Carp-Always-Color>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Carp-Always-Color>

=item * Search CPAN

L<http://search.cpan.org/dist/Carp-Always-Color>

=back

=head1 AUTHOR

  Jesse Luehrs <doy at tozt dot net>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Jesse Luehrs.

This is free software; you can redistribute it and/or modify it under
the same terms as perl itself.

=cut

1;