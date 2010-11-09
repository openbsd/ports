# $OpenBSD: Makefile,v 1.23 2010/11/09 18:22:27 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl interface to the Imlib2 image library

DISTNAME=	Image-Imlib2-2.02
REVISION=	1
CATEGORIES=	graphics

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xext freetype m pthread-stubs xcb z Imlib2.>=1

LIB_DEPENDS=	::graphics/imlib2

REGRESS_DEPENDS=::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MODULES=	cpan
CONFIGURE_STYLE=modbuild

USE_GROFF =	Yes

.include <bsd.port.mk>
