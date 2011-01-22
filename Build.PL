use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'TeX::AutoTeX',
    license             => 'perl',
    dist_author         => q{Thorsten Schwander <Thorsten.Schwander@gmail.com>},
    dist_abstract       => q{The automated TeX processing module developed and used at arXiv.org},
    dist_version_from   => 'lib/TeX/AutoTeX.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'TeX-AutoTeX-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
