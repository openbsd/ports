require 5.002;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME	 => 'Font::AFM',
    VERSION_FROM => 'AFM.pm',
    dist         => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
);
