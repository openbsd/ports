# $OpenBSD: Makefile,v 1.28 2004/12/17 15:03:18 alek Exp $

COMMENT=		"GUI toolkit for X11"

DISTNAME=	xforms-1.0
CATEGORIES=	x11

HOMEPAGE=	http://world.std.com/~xforms/

MASTER_SITES=	http://savannah.nongnu.org/download/xforms/stable.pkg/1.0/

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		GL X11 Xext Xpm c jpeg m

USE_X11=		Yes
CONFIGURE_STYLE=	imake

BUILD_DEPENDS=		::graphics/jpeg

LIB_DEPENDS=		tiff.35::graphics/tiff

NO_REGRESS=		Yes

.include <bsd.port.mk>
