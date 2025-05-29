BROKEN-sparc64=	./configure: error: no Perl found.

UNIT_MODNAME=	perl

WANTLIB=	c m perl
MODULES=	perl

post-configure:
	cd ${WRKSRC} && ./configure perl

.include <bsd.port.mk>
