COMMENT=	RCS equivalent of CVS's annotate command

DISTNAME=	blame-1.3.1
REVISION=	0
CATEGORIES=	devel

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	https://invisible-mirror.net/archives/rcs-blame/

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CFLAGS +=	-fgnu89-inline

.include <bsd.port.mk>
