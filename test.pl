#!/usr/bin/perl -w
# 3AAFVlt - test.pl created by Pip@CPAN.org to validate Time::PT
#     functionality.  
#   Before `make install' is performed this script should be run with
#     `make test'.  After `make install' it should work as `perl test.pl'.

BEGIN { $| = 1; print "0..15\n"; }
END   { print "not ok 1\n" unless($lded); }
use strict;
use Time::PT;

my $rslt; my $fldz; my $tnum = 0; our $lded = 1;
my @rdat = ();
&rprt(1);

sub rprt { # prints test progress
  my $baad = !shift;
  print "not " x $baad;
  print "ok ", $tnum++, "\n";
  print @_ if(($ENV{TEST_VERBOSE} ||1) and $baad);
}

$fldz = new Time::PT;
&rprt($fldz);

$rslt = $fldz->get_century();
&rprt($rslt == 0, "$rslt\n");

$rslt = $fldz->set_century(20);
&rprt($rslt == 20, "$rslt\n");

$fldz = Time::PT->new();
&rprt($fldz);

$fldz = Time::PT->new('str' => '0123456789');
&rprt($fldz);

$fldz = Time::PT->new('hash' => { 'jink' => 31 });
&rprt($fldz);

$rslt = $fldz->get_jink();
&rprt($rslt == 31, "$rslt\n");

$fldz = Time::PT->new('list' => [ 0, 3, 6, 9, 12, 15, 18, 21, 24, 27 ]);
&rprt($fldz);

@rdat = $fldz->ymd();
&rprt($rdat[1] == 6, "@rdat\n");

@rdat = $fldz->ymd(4, 8, 12);
&rprt($rdat[1] == 8, "@rdat\n");

$fldz = Time::PT->new('9876543210');
&rprt($fldz);

$rslt = $fldz->j(127);
&rprt($rslt == 127, "$rslt\n");

@rdat = $fldz->FooIsMyJoy(4, 8, 12);
&rprt($rdat[2] == 12, "$rslt\n");
&rprt($rdat[7] == 127, "@rdat\n");

$fldz = Time::PT->new('verbose' => 'July 4, 2004');
$rslt = $fldz->day();
&rprt($rslt == 4, "$rslt\n");


# done w/ 15 tests
#print "15 tests complete\n";
#$rslt = $fldz->month();
#&rprt($rslt == 7, "$rslt\n");
#$rslt = $fldz->year();
#&rprt($rslt == 2004, "$rslt\n");
#$fldz = Time::PT->new('verbose' => 'Tuesday, April 1 15:32:16:33 2003');
#$rslt = $fldz->day();
#&rprt($rslt == 1, "$rslt\n");
#$rslt = $fldz->month();
#&rprt($rslt == 4, "$rslt\n");
#$rslt = $fldz->year();
#&rprt($rslt == 2003, "$rslt\n");
#$rslt = "$fldz";
#&rprt($rslt eq '341FWGX', "$rslt\n");
#my $fld2 = Time::PT->new('3C193GQ');
#$rslt = ($fldz cmp $fld2);
#&rprt($rslt eq 'lt', "$rslt\n");
#$rslt = ($fldz <=> $fld2);
#&rprt($rslt == -1, "$rslt\n");
#$fld2 = Time::PT->new('3AB');
#$rslt = "$fld2";
#&rprt($rslt eq '3AB0000', "$rslt\n");
#$fld2 = Time::PT->new('3C1HqZ4JG');
#$rslt = "$fld2";
#&rprt($rslt eq '3C1HqZ4JG', "$rslt\n");
#print "25 tests complete\n";
#$fldz = Time::PT->new('1234567');
#$fldz += '321';
#$rslt = "$fldz";
#&rprt($rslt eq '1234888', "$rslt\n");
#$fldz = Time::PT->new('1234567');
#$fldz -= '123';
#$rslt = "$fldz";
#&rprt($rslt eq '1234444', "$rslt\n");
#$fldz = Time::PT->new();
#$rslt = "$fldz";
#&rprt($rslt gt '3C7', "$rslt\n");
#$fldz = Time::PT->new('3C7');
#$rslt = $fldz->color();
#&rprt($rslt eq "\e[1;31m3\e[0;33mC\e[1;33m7", "$rslt\n");
#$rslt = $fldz->color('Simp');
#&rprt($rslt eq 'RbobYb', "$rslt\n");
#$fldz = Time::PT->new('');
##$rslt = $fldz->Y;  # test if new('') creates 0 year or 2000
##print "rslt:$rslt\n";
#$rslt = $fldz + '1234567';
#&rprt($rslt == '1234567', "31:$rslt\n");
#$fldz = Time::PT->new('1234567');
#$rslt = $fldz + '1234567';
#&rprt($rslt == '2468ACE', "$rslt\n");
#$fldz = Time::PT->new('');
#$rslt = $fldz + '1234';
#&rprt("$rslt" eq '1234',    "$rslt\n");
#&rprt($rslt   == '0001234', "$rslt\n");
#&rprt($rslt   <     '1234', "$rslt\n");
#print "35 tests complete\n";
#$fldz = Time::PT->new('1234');
#$rslt = $fldz + '1234';
#&rprt($rslt == '1235234', "$rslt\n");
## test carry
#$fldz = Time::PT->new('');
#$rslt = $fldz + 'x';
#&rprt($rslt == '000000x', "$rslt\n");
#$fldz = Time::PT->new('7777777');
#$rslt = $fldz + 'x';
#&rprt($rslt == '7777786', "$rslt\n");
#$fldz = Time::PT->new('7777777');
#$rslt = $fldz + 'uvwx';
#&rprt($rslt == '779G566', "$rslt\n");
#$fldz = Time::PT->new('7777777');
#$rslt = $fldz - '3333333';
#&rprt($rslt == '4444444', "$rslt\n");
#$fldz = Time::PT->new('7777777');
#$rslt = $fldz - '3333';
#&rprt($rslt == '7774444', "$rslt\n");
#$fldz = Time::PT->new('7777777');
#$rslt = $fldz - '8';
#&rprt($rslt == '777776x', "$rslt\n");
#$fldz = Time::PT->new('777776x');
#$rslt = $fldz + '8';
#&rprt($rslt == '7777777', "$rslt\n");
#
#$fldz = Time::PT->new('3C7Jr8L');
#$rslt = $fldz->frm;
#&rprt($rslt == 21, "$rslt\n");
#$rslt = $fldz->sec;
#&rprt($rslt == 8, "$rslt\n");
#$rslt = $fldz->min;
#&rprt($rslt == 53, "$rslt\n");
#$rslt = $fldz->hour;
#&rprt($rslt == 19, "$rslt\n");
#$rslt = $fldz->mday;
#&rprt($rslt == 7, "$rslt\n");
#$rslt = $fldz->mon;
#&rprt($rslt == 12, "$rslt\n");
#$rslt = $fldz->_mon;
#&rprt($rslt == 11, "$rslt\n");
#print "50 tests complete\n";
#$rslt = $fldz->monname('Feb');
#&rprt($rslt eq 'Feb', "$rslt\n");
#$rslt = $fldz->O;
#&rprt($rslt == 2, "$rslt\n");
#$rslt = $fldz->fullmonth();
#&rprt($rslt eq 'February', "$rslt\n");
#$rslt = $fldz->month();
#&rprt($rslt == 2, "$rslt\n");
#$rslt = $fldz->month(3);
#&rprt($rslt == 3, "$rslt\n");
#$rslt = $fldz->mon();
#&rprt($rslt == 3, "$rslt\n");
#$rslt = $fldz->_mon();
#&rprt($rslt == 2, "$rslt\n");
#$rslt = $fldz->monname();
#&rprt($rslt eq 'Mar', "$rslt\n");
#$rslt = $fldz->fullmonth();
#&rprt($rslt eq 'March', "$rslt\n");
#$rslt = $fldz->year();
#&rprt($rslt == 2003, "$rslt\n");
#$rslt = $fldz->_year();
#&rprt($rslt == 103, "$rslt\n");
#$rslt = $fldz->yy();
#&rprt($rslt == 03, "$rslt\n");
#$rslt = $fldz->dow();
#&rprt($rslt == 5, "$rslt\n");
#$rslt = $fldz->day_of_week();
#&rprt($rslt == 5, "$rslt\n");
#$rslt = $fldz->_wday();
#&rprt($rslt == 5, "$rslt\n");
#print "65 tests complete\n";
#$rslt = $fldz->wday();
#&rprt($rslt == 6, "$rslt\n");
#$rslt = $fldz->wdayname();
#&rprt($rslt eq 'Fri', "$rslt\n");
#$rslt = $fldz->day();
#&rprt($rslt == 7, "$rslt\n");
#$rslt = $fldz->fullday();
#&rprt($rslt eq 'Friday', "$rslt\n");
#$rslt = $fldz->yday();
#&rprt($rslt == 65, "$rslt\n");
#$rslt = $fldz->day_of_year();
#&rprt($rslt == 65, "$rslt\n");
#$rslt = $fldz->isdst();
#&rprt($rslt == 0, "$rslt\n");
#$rslt = $fldz->daylight_savings();
#&rprt($rslt == 0, "$rslt\n");
#$rslt = $fldz->hms();
#&rprt($rslt == 3, "$rslt\n");
#$rslt = $fldz->hmsf();
#&rprt($rslt == 4, "$rslt\n");
#$rslt = $fldz->time();
#&rprt($rslt == 4, "$rslt\n");
#my @rslt = $fldz->monname('Jen', 'Fab', 'Mer', 'Epr', 'Moy', 'Jin', 'Jil', 'Eug', 'Sap', 'Uct', 'Nev', 'Doc');
#&rprt($rslt == 4, "$rslt\n");
#$fldz = Time::PT->new('241');
#$rslt = $fldz->color('HTML');
#&rprt($rslt eq '<a href="http://Ax9.org/pt?241"><font color="#FF1B2B">2</font><font color="#FF7B2B">4</font><font color="#FFFF1B">1</font></a>', "$rslt\n");
#$fldz = Time::PT->new('3CB636B');
#$rslt = $fldz->color('HTML');
#&rprt($rslt eq '<a href="http://Ax9.org/pt?3CB636B"><font color="#FF1B2B">3</font><font color="#FF7B2B">C</font><font color="#FFFF1B">B</font><font color="#1BFF3B">6</font><font color="#1BFFFF">3</font><font color="#1B7BFF">6</font><font color="#BB1BFF">B</font></a>', "$rslt\n");
#
# these are for when 0 months/days can be handled by math functions
#$fldz = Time::PT->new('7777777');
#$rslt = $fldz - '8888888';
#&rprt($rslt == '2BxMwwx', "$rslt\n");
#$fldz = Time::PT->new('2BxMwwx');
#$rslt = $fldz + '8888888';
#&rprt($rslt == '7777777', "$rslt\n");
#print "45 tests complete\n";
#$fldz = Time::PT->new('3');
#$rslt = $fldz - '1';
#&rprt($rslt == '7777777', "$rslt\n");
#$fldz = Time::PT->new('30UNxxx');
#$rslt = $fldz + '1';
#&rprt($rslt == '7777777', "$rslt\n");

#$fldz = Time::PT->new('');
#$rslt = $fldz + '';
#print "rslt:$rslt\n";
#&rprt($rslt == '0000000', "$rslt\n");

