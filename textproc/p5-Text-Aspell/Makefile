# $OpenBSD: Makefile,v 1.18 2017/04/10 11:46:34 sthen Exp $

COMMENT=	interface to the GNU aspell library

MODULES=	cpan
DISTNAME=	Text-Aspell-0.09
REVISION=	7
CATEGORIES=	devel textproc

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl ${LIBCXX} aspell>=16

LIB_DEPENDS=	textproc/aspell/core

CONFIGURE_ARGS=	LIBS="-L${LOCALBASE}/lib -laspell -lstdc++" \
		INC="-I${LOCALBASE}/include"

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
