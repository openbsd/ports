use Module::Build;
Module::Build->new
(
	'module_name' => 'POE::Filter::XML',
	'license' => 'gpl',
	'create_makefile_pl' => 'passthrough',
	'create_readme' => 1,
	'requires' =>
	{
		'perl'	=>	'5.8.1',
		'POE'	=>	'0.34_01',
		'Scalar::Util' => '1.18',
		'XML::SAX' => '0.14',
		'XML::SAX::Expat::Incremental' => '0.04',
		'Filter::Template' => '1.01',
	}
)->create_build_script();
