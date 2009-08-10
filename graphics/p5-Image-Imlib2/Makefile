# $OpenBSD: Makefile,v 1.18 2009/08/10 06:31:45 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl interface to the Imlib2 image library

DISTNAME=	Image-Imlib2-2.02
PKGNAME=	p5-${DISTNAME}p0
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
