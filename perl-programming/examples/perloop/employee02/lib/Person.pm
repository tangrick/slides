package Person;
use strict;
use warnings;

sub new {
    my ($class, %args) = @_;

    my $self = \%args;

    bless $self, $class;

    return $self;
}

sub name {
    my ($self, $value) = @_;
    if (@_ == 2) {
        $self->{name} = $value;
    }

    return $self->{name};
}

1;

