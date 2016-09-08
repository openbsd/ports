# $OpenBSD: Makefile,v 1.8 2016/09/08 17:32:57 jasper Exp $

COMMENT =	pixel-perfect recreation of the original IBM VGA font

TYPEFACE =	${GH_PROJECT}
GH_ACCOUNT =	ansilove
GH_PROJECT =	BlockZone
GH_TAGNAME =	1.004
REVISION =	1

CATEGORIES =	fonts

HOMEPAGE =	https://github.com/ansilove/blockzone

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# SIL Open Font License 1.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	font

NO_BUILD =	Yes

DOCDIR =	${PREFIX}/share/doc/blockzone

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${DOCDIR}

.include <bsd.port.mk>
