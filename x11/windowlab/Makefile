# $OpenBSD: Makefile,v 1.4 2019/07/12 20:51:23 sthen Exp $

COMMENT =	small and simple window manager of novel design
DISTNAME =	windowlab-1.40
EXTRACT_SUFX =	.tar
CATEGORIES =	x11
REVISION =	0

HOMEPAGE =	http://nickgravgaard.com/windowlab/

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += X11 Xext Xft c

MASTER_SITES =	http://nickgravgaard.com/windowlab/

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}" \
		SYSCONFDIR=${SYSCONFDIR}/X11/windowlab

NO_TEST =	Yes

post-patch:
	mv ${WRKSRC}/windowlab.1x ${WRKSRC}/windowlab.1
	perl -pi -e s/1x/1/g ${WRKSRC}/windowlab.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/windowlab ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/windowlab/
	${INSTALL_DATA} ${WRKSRC}/windowlab.menurc ${PREFIX}/share/examples/windowlab
	${INSTALL_MAN} ${WRKSRC}/windowlab.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
