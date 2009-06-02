package SDL::Build::Openbsd;

use base 'SDL::Build';
# ${LOCALBASE}
sub fetch_includes
{
	return (
	'${LOCALBASE}/include',        => '${LOCALBASE}/lib',
	'${LOCALBASE}/include/libpng'     => '${LOCALBASE}/lib',
	'${LOCALBASE}/include/GL'     => '${LOCALBASE}/lib',
	'${LOCALBASE}/include/SDL'     => '${LOCALBASE}/lib',
	'${LOCALBASE}/include/smpeg'   => '${LOCALBASE}/lib',

	'/usr/include'              => '/usr/lib',

	'${X11BASE}/include'        => '${X11BASE}/lib',
	'${X11BASE}/include/GL'     => '${X11BASE}/lib',
	);
}

1;
