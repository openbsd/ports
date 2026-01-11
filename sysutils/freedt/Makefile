COMMENT=	reimplementation of Dan Bernstein's daemontools

DISTNAME=	freedt-24
CATEGORIES=	sysutils

HOMEPAGE=	https://offog.org/code/freedt.html
SITES=		https://offog.org/files/

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	c

CONFIGURE_STYLE=gnu

post-install:
	rm -f ${PREFIX}/bin/recordio
	mv ${PREFIX}/bin/{,f}argv0

.include <bsd.port.mk>
