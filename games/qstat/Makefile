# $OpenBSD: Makefile,v 1.13 2021/02/02 11:39:58 sthen Exp $

COMMENT=	displays the status of multi-player Internet Game servers

GH_ACCOUNT=	multiplay
GH_PROJECT=	qstat
GH_COMMIT=	502167b108b7d40daacfc75c2b5c9eb4c7714f2b
DISTNAME=	qstat-2.14pl20201129

CATEGORIES=	games
MAINTAINER=	Tom Murphy <openbsd@pertho.net>

# Artistic
PERMIT_PACKAGE=	Yes

WANTLIB=	c

CONFIGURE_STYLE =	autoreconf

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
AUTORECONF =		./autogen.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qstat
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qstat
	${INSTALL_DATA} ${WRKSRC}/CHANGES.txt ${WRKSRC}/qstatdoc.html \
		${PREFIX}/share/doc/qstat
	${INSTALL_DATA} ${WRKSRC}/qstat.cfg \
		${PREFIX}/share/examples/qstat

.include <bsd.port.mk>
