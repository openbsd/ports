use ExtUtils::MakeMaker;

WriteMakefile(
               'NAME'		=> 'Term::Screen',
               'VERSION_FROM'	=> 'Screen.pm', 
               'PREREQ_PM'      => { Term::Cap => 0 },
             );
