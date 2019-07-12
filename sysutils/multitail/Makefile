# $OpenBSD: Makefile,v 1.33 2019/07/12 20:49:46 sthen Exp $

COMMENT=	multi-window tail(1) utility

DISTNAME=	multitail-6.4.2
CATEGORIES=	sysutils
REVISION=	0

HOMEPAGE=	http://www.vanheusden.com/multitail/

MAINTAINER=	Adam Wolk <awolk@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

WANTLIB=	c m curses util panel

NO_TEST=	Yes

MAKE_FLAGS=	UTF8_SUPPORT='no'
USE_GMAKE=	Yes

pre-configure:
	@sed -i 's,-O3,,' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/multitail ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/multitail.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/multitail
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${WRKSRC}/manual.html \
		${PREFIX}/share/doc/multitail
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/multitail
	${INSTALL_DATA} ${WRKSRC}/multitail.conf \
		${PREFIX}/share/examples/multitail
	@perl -i -pe \
		's:/etc/multitail/:${TRUEPREFIX}/share/examples/multitail/:' \
		${PREFIX}/share/examples/multitail/multitail.conf
	${INSTALL_DATA} ${WRKSRC}/conversion-scripts/* \
		${PREFIX}/share/examples/multitail

.include <bsd.port.mk>
