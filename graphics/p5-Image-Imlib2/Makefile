# $OpenBSD: Makefile,v 1.35 2020/07/03 21:45:23 sthen Exp $

COMMENT=	Perl interface to the Imlib2 image library

DISTNAME=	Image-Imlib2-2.03
REVISION=	4
CATEGORIES=	graphics

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c X11 Xext freetype m perl z Imlib2>=1

LIB_DEPENDS=	graphics/imlib2

MAKE_ENV=	TEST_POD=Yes

MODULES=	cpan
CONFIGURE_STYLE=modbuild


.include <bsd.port.mk>
