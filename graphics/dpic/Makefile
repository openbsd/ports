COMMENT =		pic-like interpreter for producing line graphics

DISTNAME =		dpic-2023.06.01

CATEGORIES =		graphics

HOMEPAGE =		https://ece.uwaterloo.ca/~aplevich/dpic/

# 2-clause BSD (code), CC-BY-3.0 (dpic-doc.pdf)
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m

ALL_TARGET =		dpic

SITES =			https://ece.uwaterloo.ca/~aplevich/dpic/

TEST_DEPENDS =		print/texlive/base \
			print/texlive/texmf,-main

CONFIGURE_STYLE =	gnu

DEBUG_PACKAGES =	${BUILD_PACKAGES}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dpic ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/dpic.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dpic/
	${INSTALL_DATA} ${WRKSRC}/dpic-doc.pdf ${PREFIX}/share/doc/dpic/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dpic/
	cd ${WRKSRC}/examples/ && \
		pax -rw sources Examples.txt Makefile README.txt ${PREFIX}/share/examples/dpic/

do-test:
	cd ${WRKSRC}/examples/ && \
	make -e DPIC=${WRKSRC}/dpic all

.include <bsd.port.mk>
