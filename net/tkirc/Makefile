# $OpenBSD: Makefile,v 1.19 2019/07/12 21:02:24 sthen Exp $

COMMENT=	ircII internet relay chat client

DISTNAME=	tkirc2.46
PKGNAME=	tkirc-2.46
REVISION=	4
CATEGORIES=	net

HOMEPAGE=	http://netsplit.de/tkirc2/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://netsplit.de/tkirc2/

MODULES=	x11/tk
RUN_DEPENDS=	net/ircII \
		${MODTK_RUN_DEPENDS}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}/tkirc2

do-install:
	${MODTCL_WISH_ADJ} ${WRKSRC}/tkirc2
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkirc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tkirc/scripts
	${INSTALL_SCRIPT} ${WRKSRC}/tkirc2 ${PREFIX}/bin/tkirc
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README} ${PREFIX}/share/doc/tkirc
	${INSTALL_SCRIPT} ${WRKSRC}/.tkirc2/scripts/* \
		${PREFIX}/share/examples/tkirc/scripts
	${INSTALL_DATA} ${WRKSRC}/.tkirc2/{netscape.sh,tkircrc-example} \
		${PREFIX}/share/examples/tkirc

.include <bsd.port.mk>
