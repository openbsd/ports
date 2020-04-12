# $OpenBSD: Makefile,v 1.3 2020/04/12 14:46:04 sthen Exp $

COMMENT =	Colorado University Decision Diagram

V =		3.0.0
GH_ACCOUNT =	ivmai
GH_PROJECT =	cudd
GH_TAGNAME =	cudd-$V
DISTNAME =	cudd-$V
REVISION=	0

CATEGORIES =	devel

SHARED_LIBS +=  cudd			0.0	# 0.0

MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.mooo.com>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} m

COMPILER =	base-clang ports-gcc base-gcc

BUILD_DEPENDS =	devel/doxygen \
		print/texlive/base

CONFIGURE_STYLE =	gnu

USE_GMAKE =	Yes

TEST_DEPENDS =	textproc/gdiff
TEST_TARGET =	check

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cudd
	${INSTALL_DATA} ${WRKSRC}/doc/cudd.pdf ${PREFIX}/share/doc/cudd
	${INSTALL_DATA} ${WRKSRC}/doc/phase.pdf ${PREFIX}/share/doc/cudd

pre-test:
	ln -s ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff

.include <bsd.port.mk>
