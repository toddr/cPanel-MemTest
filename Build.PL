use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    dist_name           => 'cPanel::MemTest',
    author              => 'Daniel Muey <dmuey@cpan.org>',
    dist_version_from   => 'lib/cPanel/MemTest.pm',
    license             => 'perl',
    build_requires      => {'Test::More'    => '0.40', 
			    'Module::Build' => '0.3603'},
#    VERSION_FROM        => 'lib/cPanel/MemTest.pm',
#    ABSTRACT_FROM       => 'lib/cPanel/MemTest.pm',
    add_to_cleanup      => ['cPanel-MemTest-*' ],
    create_makefile_pl  => 'small',
    autosplit           => 'lib/cPanel/MemTest.pm',
);

$builder->create_build_script;
