UNIT_MODNAME=	perl

REVISION=	0

WANTLIB=	c m perl
MODULES=	perl

post-configure:
	cd ${WRKSRC} && ./configure perl

.include <bsd.port.mk>
