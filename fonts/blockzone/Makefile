# $OpenBSD: Makefile,v 1.10 2016/11/04 15:53:59 rpe Exp $

COMMENT =	pixel-perfect recreation of the original IBM VGA font

TYPEFACE =	${GH_PROJECT}
GH_ACCOUNT =	ansilove
GH_PROJECT =	BlockZone
GH_TAGNAME =	1.004
REVISION =	2

CATEGORIES =	fonts

HOMEPAGE =	https://github.com/ansilove/blockzone

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# SIL Open Font License 1.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

DOCDIR =	${PREFIX}/share/doc/blockzone

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${DOCDIR}

.include <bsd.port.mk>
