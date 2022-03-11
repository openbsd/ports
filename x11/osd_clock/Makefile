COMMENT=	xosd based clock
DISTNAME=	osd_clock-0.5
REVISION=	3

CATEGORIES=	x11
MASTER_SITES=	https://distfiles.sigtrap.nl/

# GPLv2
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes

LIB_DEPENDS=	x11/xosd
WANTLIB=	X11 Xext Xt c pthread xosd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/osd_clock ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/osd_clock.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
