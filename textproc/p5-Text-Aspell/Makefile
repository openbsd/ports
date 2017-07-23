# $OpenBSD: Makefile,v 1.20 2017/07/23 09:26:29 espie Exp $

COMMENT=	interface to the GNU aspell library

MODULES=	cpan
DISTNAME=	Text-Aspell-0.09
REVISION =	8
CATEGORIES=	devel textproc

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl ${COMPILER_LIBCXX} aspell>=16

LIB_DEPENDS=	textproc/aspell/core

CONFIGURE_ARGS=	LIBS="-L${LOCALBASE}/lib -laspell -lstdc++" \
		INC="-I${LOCALBASE}/include"

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
