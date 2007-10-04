use Test::More tests => 3;

use cPanel::MemTest qw(testallocate);

diag( "Testing cPanel::MemTest $cPanel::MemTest::VERSION" );

ok( testallocate(100) == 100, 'simple allocate');
ok( !testallocate(0),    'MB too low');
ok( !testallocate(1025), 'MB too high');