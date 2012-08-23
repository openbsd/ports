# $OpenBSD: Makefile,v 1.27 2012/08/23 15:50:05 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl interface to the Imlib2 image library

DISTNAME=	Image-Imlib2-2.03
REVISION=	0
CATEGORIES=	graphics

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c X11 Xext freetype m z Imlib2>=1

LIB_DEPENDS=	graphics/imlib2

MAKE_ENV=	TEST_POD=Yes

MODULES=	cpan
CONFIGURE_STYLE=modbuild

USE_GROFF =	Yes

.include <bsd.port.mk>
