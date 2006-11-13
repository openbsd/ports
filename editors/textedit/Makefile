# $OpenBSD: Makefile,v 1.21 2006/11/13 10:08:12 steven Exp $

COMMENT=	"standard OpenLook text editor for X11"

DISTNAME=	textedit
PKGNAME=	textedit-1.0
CATEGORIES=	editors

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	"No license information"
PERMIT_PACKAGE_FTP=	"No license information"
PERMIT_DISTFILES_CDROM=	"No license information"
PERMIT_DISTFILES_FTP=	"No license information"
WANTLIB=		X11 Xext c

MASTER_SITES=	http://www.darwinsys.com/freeware/

LIB_DEPENDS=    xview.>=3,olgx.>=3::x11/xview/lib
BUILD_DEPENDS=	::x11/xview/config

CONFIGURE_STYLE=imake

MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
