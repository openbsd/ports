# $OpenBSD: Makefile,v 1.23 2019/07/12 20:50:06 sthen Exp $

COMMENT=	interface to the GNU aspell library

MODULES=	cpan
DISTNAME=	Text-Aspell-0.09
REVISION =	10
CATEGORIES=	devel textproc

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl ${COMPILER_LIBCXX} aspell>=16

# XXX hardcoded -lstdc++
COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	textproc/aspell/core

CONFIGURE_ARGS=	LIBS="-L${LOCALBASE}/lib -laspell -lstdc++" \
		INC="-I${LOCALBASE}/include"

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
