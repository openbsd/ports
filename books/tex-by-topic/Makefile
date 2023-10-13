COMMENT =	book on TeX typesetting system for experienced audience
CATEGORIES =	books

V =		20230810
EPOCH =		0
PKGNAME =	tex-by-topic-${V}

GH_ACCOUNT =	VictorEijkhout
GH_PROJECT =	tex-by-topic
GH_COMMIT =	8bbddee39e099a57517d16140a9dc16cf0cfd680
DISTNAME =	tex-by-topic

HOMEPAGE =	https://www.eijkhout.net/tex/tex-by-topic.html

BUILD_DEPENDS =	print/texlive/base

# GNU FDL (See top of TeXbyTopic.tex)
PERMIT_PACKAGE =	Yes

INSTALL_LOC =	${PREFIX}/share/doc/tex-by-topic
NO_TEST =	Yes
PKG_ARCH =	*

ALL_TARGET =	pdf

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKBUILD}/TeXbyTopic.pdf ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKBUILD}/README ${INSTALL_LOC}

.include <bsd.port.mk>
