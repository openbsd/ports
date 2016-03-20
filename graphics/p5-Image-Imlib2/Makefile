# $OpenBSD: Makefile,v 1.33 2016/03/20 19:56:44 naddy Exp $

COMMENT=	Perl interface to the Imlib2 image library

DISTNAME=	Image-Imlib2-2.03
REVISION=	3
CATEGORIES=	graphics

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c X11 Xext freetype m perl z Imlib2>=1

LIB_DEPENDS=	graphics/imlib2

MAKE_ENV=	TEST_POD=Yes

MODULES=	cpan
CONFIGURE_STYLE=modbuild


.include <bsd.port.mk>
