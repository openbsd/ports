# $OpenBSD: Makefile,v 1.1.1.1 2015/05/02 18:17:01 landry Exp $

COMMENT =	book on TeX typesetting system for experienced audience
CATEGORIES =	books

V =		1.4
PKGNAME =	tex-by-topic-${V}
COMMIT =		c26c982f7f71
DISTNAME =	${COMMIT}
REVISION =	0

HOMEPAGE =	http://eijkhout.net/texbytopic/texbytopic.html

MASTER_SITES =	https://bitbucket.org/VictorEijkhout/tex-by-topic/get/

BUILD_DEPENDS =	print/texlive/texmf,-full

# GNU FDL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

WRKDIST =	${WRKDIR}/VictorEijkhout-tex-by-topic-${COMMIT}
INSTALL_LOC =	${PREFIX}/share/doc/tex-by-topic
NO_TEST =	Yes
PKG_ARCH =	*

ALL_TARGET =	pdf

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKBUILD}/TeXbyTopic.pdf ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKBUILD}/README ${INSTALL_LOC}

.include <bsd.port.mk>
