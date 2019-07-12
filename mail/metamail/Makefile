# $OpenBSD: Makefile,v 1.33 2019/07/12 20:47:29 sthen Exp $

COMMENT=	MIME implementation

DISTNAME=	mm2.7
PKGNAME=	metamail-2.7
REVISION=	6
CATEGORIES=	mail

MASTER_SITES=	http://www.guppylake.com/~nsb/metamail/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE=	Yes

WANTLIB += c curses

# mkfontdir & friends
USE_X11 =	Yes

WRKSRC=		${WRKDIST}/src
MAKE_FLAGS=	CC="${CC}" CFLAGS="-DHAVE_TCGETATTR ${CFLAGS}"
NO_TEST=	Yes

post-configure:
	@${SUBST_CMD} ${WRKSRC}/config.h

pre-install:
	rm ${WRKSRC}/bin/*.orig

post-install:
	mv ${PREFIX}/man/man4/mailcap.4 ${PREFIX}/man/man5/mailcap.5

.include <bsd.port.mk>
