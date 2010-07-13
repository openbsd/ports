# $OpenBSD: Makefile,v 1.19 2010/07/13 19:46:13 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl interface to the Imlib2 image library

DISTNAME=	Image-Imlib2-2.02
REVISION=	0
CATEGORIES=	graphics

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xext freetype m pthread-stubs xcb z

LIB_DEPENDS=	Imlib2.>=1::graphics/imlib2

REGRESS_DEPENDS=::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MODULES=	cpan
CONFIGURE_STYLE=modbuild

USE_X11=	Yes

.include <bsd.port.mk>
