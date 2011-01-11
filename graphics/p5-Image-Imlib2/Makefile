# $OpenBSD: Makefile,v 1.26 2011/01/11 18:36:57 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl interface to the Imlib2 image library

DISTNAME=	Image-Imlib2-2.03
CATEGORIES=	graphics

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xext freetype m z Imlib2>=1

LIB_DEPENDS=	graphics/imlib2

MAKE_ENV=	TEST_POD=Yes

MODULES=	cpan
CONFIGURE_STYLE=modbuild

USE_GROFF =	Yes

.include <bsd.port.mk>
