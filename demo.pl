#!/usr/bin/perl -w

use lib "./";
use MatOperators;

sub print_mat {
    # @param $mat_ref
    my $mat_ref = shift;
    foreach  (@$mat_ref) {
        print "@$_\n";
    }
}

$mat_a_ref = [
    [1, 2],
    [3, 4],
];

$mat_b_ref = [
    [5, 6],
    [7, 8],
];

$num = 2;

# print vars
print "\$num = $num\n";
print "\$mat_a_ref =\n";
&print_mat($mat_a_ref);
print "\$mat_b_ref =\n";
&print_mat($mat_b_ref);

# print operations and results
$res_ref = &MatOperators::mat_add($mat_a_ref, $mat_b_ref);
print "mat_add(\$mat_a_ref, \$mat_b_ref) =\n";
&print_mat($res_ref);

$res_ref = &MatOperators::mat_minus($mat_a_ref, $mat_b_ref);
print "mat_minus(\$mat_a_ref, \$mat_b_ref) =\n";
&print_mat($res_ref);

$res_ref = &MatOperators::mat_multiply($mat_a_ref, $mat_b_ref);
print "mat_multiply(\$mat_a_ref, \$mat_b_ref) =\n";
&print_mat($res_ref);

$res_ref = &MatOperators::mat_dot($mat_a_ref, $mat_b_ref);
print "mat_dot(\$mat_a_ref, \$mat_b_ref) =\n";
&print_mat($res_ref);

$res_ref = &MatOperators::mat_num_multiply($num, $mat_a_ref);
print "mat_num_multiply(\$num, \$mat_a_ref) =\n";
&print_mat($res_ref);

$res_ref = &MatOperators::mat_T($mat_a_ref);
print "mat_T(\$mat_a_ref) =\n";
&print_mat($res_ref);
