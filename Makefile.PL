use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# # the contents of the Makefile that is written.
WriteMakefile(
  'NAME'         => 'Time::PT',
  'VERSION_FROM' => '/home/pip/dvl/utl/pt/PT/lib/Time/PT.pm', # finds $VERSION
  'ABSTRACT'     => 'objects to store an instant in time',
  'AUTHOR'       => 'Pip Stuart <Pip@CPAN.org>',
  'PREREQ_PM'    => {
    'Time::HiRes' => 0,
    'Time::DaysInMonth' => 0,
    'Math::BaseCnv' => 0,
    'Time::Local' => 0,
    'Time::Zone' => 0,
    'Time::Frame' => 0,
    'Time::Fields' => 0,
    'Time::DayOfWeek' => 0,
  }, # Module::Name => 1.1,
  'dist'         => { 'COMPRESS' => 'gzip', 'SUFFIX' => 'tgz' },
);