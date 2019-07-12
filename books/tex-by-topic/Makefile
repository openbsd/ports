# $OpenBSD: Makefile,v 1.3 2019/07/12 21:15:34 sthen Exp $

COMMENT =	book on TeX typesetting system for experienced audience
CATEGORIES =	books

V =		1.4
PKGNAME =	tex-by-topic-${V}
COMMIT =		c26c982f7f71
DISTNAME =	${COMMIT}
REVISION =	1

HOMEPAGE =	http://eijkhout.net/texbytopic/texbytopic.html

MASTER_SITES =	https://bitbucket.org/VictorEijkhout/tex-by-topic/get/

BUILD_DEPENDS =	print/texlive/base

# GNU FDL
PERMIT_PACKAGE =	Yes

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
