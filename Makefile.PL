
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Data::Google::Visualization::DataTable',
                       'DISTNAME' => 'Data-Google-Visualization-DataTable',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Peter Sergeant <pete@clueball.com>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Easily create Google DataTable objects',
                       'EXE_FILES' => [],
                       'VERSION' => '0.04',
                       'PREREQ_PM' => {
                                        'JSON::XS' => '2.0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



