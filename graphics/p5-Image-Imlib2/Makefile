# $OpenBSD: Makefile,v 1.28 2013/03/11 11:10:54 espie Exp $

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

USE_GROFF =	Yes

.include <bsd.port.mk>
