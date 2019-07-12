# $OpenBSD: Makefile,v 1.12 2019/07/12 20:46:23 sthen Exp $

COMMENT=	displays the status of multi-player Internet Game servers

GH_ACCOUNT=	multiplay
GH_PROJECT=	qstat
GH_TAGNAME=	v2.14

CATEGORIES=	games
MAINTAINER=	Tom Murphy <openbsd@pertho.net>

# Artistic
PERMIT_PACKAGE=	Yes

WANTLIB=	c

CONFIGURE_STYLE =	autoreconf

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9
AUTORECONF =		./autogen.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qstat
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qstat
	${INSTALL_DATA} ${WRKSRC}/CHANGES.txt ${WRKSRC}/qstatdoc.html \
		${PREFIX}/share/doc/qstat
	${INSTALL_DATA} ${WRKSRC}/qstat.cfg \
		${PREFIX}/share/examples/qstat

.include <bsd.port.mk>
