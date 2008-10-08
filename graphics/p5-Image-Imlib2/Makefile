# $OpenBSD: Makefile,v 1.16 2008/10/08 13:00:24 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl interface to the Imlib2 image library

DISTNAME=	Image-Imlib2-2.01
CATEGORIES=	graphics

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xext freetype m z

LIB_DEPENDS=	Imlib2.>=1::graphics/imlib2

REGRESS_DEPENDS=::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MODULES=	cpan
CONFIGURE_STYLE=modbuild

USE_X11=	Yes

.include <bsd.port.mk>
