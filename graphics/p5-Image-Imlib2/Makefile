# $OpenBSD: Makefile,v 1.32 2015/07/16 23:57:24 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl interface to the Imlib2 image library

DISTNAME=	Image-Imlib2-2.03
REVISION=	3
CATEGORIES=	graphics

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c X11 Xext freetype m z Imlib2>=1

LIB_DEPENDS=	graphics/imlib2

MAKE_ENV=	TEST_POD=Yes

MODULES=	cpan
CONFIGURE_STYLE=modbuild


.include <bsd.port.mk>
