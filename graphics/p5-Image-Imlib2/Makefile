# $OpenBSD: Makefile,v 1.11 2007/02/14 10:26:28 bernd Exp $

SHARED_ONLY=	Yes

COMMENT=	"Perl interface to the Imlib2 image library"

DISTNAME=	Image-Imlib2-1.10
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	graphics

MAINTAINER=	Michael Knudsen <mk@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext freetype m

LIB_DEPENDS=	Imlib2.>=1::graphics/imlib2

REGRESS_DEPENDS=::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MODULES=	cpan
CONFIGURE_STYLE=modbuild

USE_X11=	Yes

.include <bsd.port.mk>
