use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# # the contents of the Makefile that is written.
WriteMakefile(
  'NAME'         => 'Time::PT',
  'VERSION'      => '1.0.41M4cZH',
  'ABSTRACT'     => 'objects to store an instant in time',
  'AUTHOR'       => 'Pip Stuart <Pip@CPAN.Org>',
  'EXE_FILES'    => [ 
                      'bin/fpt',
                      'bin/lspt',
                      'bin/pt',
                    ],
  'PREREQ_PM'    => {
    'Time::HiRes'                    => 0,
    'Time::DaysInMonth'              => 0,
    'Math::BaseCnv'                  => 0,
    'Time::Local'                    => 0,
    'Time::Zone'                     => 0,
    'Time::DayOfWeek'                => 0,
  }, # Module::Name => 1.1,
  'dist'         => { 'COMPRESS' => 'gzip', 'SUFFIX' => 'tgz' },
);