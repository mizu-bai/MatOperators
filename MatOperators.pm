#!/usr/bin/perl

package MatOperators;

sub mat_add {
    # @param $mat1_ref
    # @param $mat2_ref
    # @return $res_ref
    my $mat1_ref = shift;
    my $mat2_ref = shift;
    my $res_ref = [];
    my $i1 = @$mat1_ref;
    my $j1 = @{$mat1_ref->[0]};
    my $i2 = @$mat2_ref;
    my $j2 = @{$mat2_ref->[0]};
    if (not ($i1 == $i2 and $j1 == $j2)) {
        die "Error: Sizes of matrixs do not match.\n";
    }
    for $i (0 .. $i1 - 1) {
        for $j (0 .. $j1 - 1) {
            $res_ref->[$i][$j] = $mat1_ref->[$i][$j] + $mat2_ref->[$i][$j];
        }  
    }
    return $res_ref;
}

sub mat_minus {
    # @param $mat1_ref
    # @param $mat2_ref
    # @return $res_ref
    my $mat1_ref = shift;
    my $mat2_ref = shift;
    my $res_ref = [];
    my $i1 = @$mat1_ref;
    my $j1 = @{$mat1_ref->[0]};
    my $i2 = @$mat2_ref;
    my $j2 = @{$mat2_ref->[0]};
    if (not ($i1 == $i2 and $j1 == $j2)) {
        die "Error: Sizes of matrixs do not match.\n";
    }
    for $i (0 .. $i1 - 1) {
        for $j (0 .. $j1 - 1) {
            $res_ref->[$i][$j] = $mat1_ref->[$i][$j] - $mat2_ref->[$i][$j];
        }  
    }
    return $res_ref;
}

sub mat_multiply {
    # @param $mat1_ref
    # @param $mat2_ref
    # @return $res_ref
    my $mat1_ref = shift;
    my $mat2_ref = shift;
    my $res_ref = [];
    my $i1 = @$mat1_ref;
    my $j1 = @{$mat1_ref->[0]};
    my $i2 = @$mat2_ref;
    my $j2 = @{$mat2_ref->[0]};
    if ($j1 != $i2) {
        die "Error: Sizes of matrixs do not match.\n";
    }
    for $i (0 .. $i1 - 1) {
        for $j (0 .. $j2 - 1) {
            my $sum = 0;
            for $k (0 .. $j1 - 1) {
                $sum += $mat1_ref->[$i][$k] * $mat2_ref->[$k][$j];
            }
            $res_ref->[$i][$j] = $sum;
        }
    }
    return $res_ref;
}

sub mat_dot {
    # @param $mat1_ref
    # @param $mat2_ref
    # @return $res_ref
    my $mat1_ref = shift;
    my $mat2_ref = shift;
    my $res_ref = [];
    my $i1 = @$mat1_ref;
    my $j1 = @{$mat1_ref->[0]};
    my $i2 = @$mat2_ref;
    my $j2 = @{$mat2_ref->[0]};
    if (not ($i1 == $i2 and $j1 == $j2)) {
        die "Error: Sizes of matrixs do not match.\n";
    }
    for $i (0 .. $i1 - 1) {
        for $j (0 .. $j1 - 1) {
            $res_ref->[$i][$j] = $mat1_ref->[$i][$j] * $mat2_ref->[$i][$j];
        }
    }
    return $res_ref;
}

sub mat_num_multiply {
    # @param $num
    # @param $mat1_ref
    # @return $res_ref
    $num = shift;
    $mat1_ref = shift;
    $res_ref = [];
    $i1 = @$mat1_ref;
    $j1 = @{$mat1_ref->[0]};
    for $i (0 .. $i1 - 1) {
        for $j (0 .. $j1 - 1) {
            $res_ref->[$i][$j] = $num * $mat1_ref->[$i][$j];
        }
    }
    return $res_ref;
}

sub mat_T {
    # @param $mat1_ref
    # @return $res_ref
    my $mat1_ref = shift;
    my $res_ref = [];
    $i1 = @$mat1_ref;
    $j1 = @{$mat1_ref->[0]};
    for $i (0 .. $i1 - 1) {
        for $j (0 .. $j1 - 1) {
            $res_ref->[$j][$i] = $mat1_ref->[$i][$j];
        }
    }
    return $res_ref;
}

1;
