package IdentityFunction::Tags;
use strict;

sub _hdlr_val {
    my ($ctx, $args) = @_;

    return $args->{value};
}

sub _hdlr_valblock {
    my ($ctx, $args, $cond) = @_;

    my $tokens = $ctx->stash('tokens');
    my $builder = $ctx->stash('builder');

    my $out .= $builder->build( $ctx, $tokens, $cond)
            || return $ctx->error( $builder->errstr );

    return $out;
}

1;
