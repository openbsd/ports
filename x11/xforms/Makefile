# $OpenBSD: Makefile,v 1.26 2002/12/26 01:58:39 margarida Exp $

COMMENT=		"GUI toolkit for X11"

DISTNAME=		xforms-1.0-release
PKGNAME=		xforms-1.0
CATEGORIES=		x11

HOMEPAGE=		http://world.std.com/~xforms/

MASTER_SITES=		ftp://ncmir.ucsd.edu/pub/xforms/OpenSource/

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tgz

USE_X11=		Yes
CONFIGURE_STYLE=	imake

BUILD_DEPENDS=		::graphics/jpeg

LIB_DEPENDS=		tiff.35::graphics/tiff

NO_REGRESS=		Yes

.include <bsd.port.mk>
