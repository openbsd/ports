# $OpenBSD: Makefile,v 1.29 2013/10/11 23:49:51 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl interface to the Imlib2 image library

DISTNAME=	Image-Imlib2-2.03
REVISION=	0
CATEGORIES=	graphics

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c X11 Xext freetype m z Imlib2>=1

LIB_DEPENDS=	graphics/imlib2

MAKE_ENV=	TEST_POD=Yes

MODULES=	cpan
CONFIGURE_STYLE=modbuild


.include <bsd.port.mk>
