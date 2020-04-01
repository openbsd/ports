# $OpenBSD: Makefile,v 1.9 2020/04/01 15:42:40 fcambus Exp $

COMMENT =		pic-like interpreter for producing line graphics

DISTNAME =		dpic-2020.03.01

CATEGORIES =		graphics

HOMEPAGE =		https://ece.uwaterloo.ca/~aplevich/dpic/

# 2-clause BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m

ALL_TARGET =		dpic

MASTER_SITES =		https://ece.uwaterloo.ca/~aplevich/dpic/

TEST_DEPENDS =		print/texlive/base \
			print/texlive/texmf,-main

CONFIGURE_STYLE =	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dpic ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/dpic.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dpic/
	cd ${WRKSRC}/examples/ && \
		pax -rw sources Examples.txt Makefile README ${PREFIX}/share/examples/dpic/

do-test:
	cd ${WRKSRC}/examples/ && \
	make -e DPIC=${WRKSRC}/dpic all

.include <bsd.port.mk>
