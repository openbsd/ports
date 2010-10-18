# $OpenBSD: Makefile,v 1.26 2010/10/18 18:00:16 espie Exp $

COMMENT=	standard OpenLook text editor for X11

DISTNAME=	textedit
PKGNAME=	textedit-1.0p2
CATEGORIES=	editors

PERMIT_PACKAGE_CDROM=	No license information
PERMIT_PACKAGE_FTP=	No license information
PERMIT_DISTFILES_CDROM=	No license information
PERMIT_DISTFILES_FTP=	No license information
WANTLIB=		X11 Xext c pthread-stubs xcb

MASTER_SITES=	http://www.darwinsys.com/freeware/

LIB_DEPENDS=    xview.>=3,olgx.>=3::x11/xview/lib
BUILD_DEPENDS=	::x11/xview/config

CONFIGURE_STYLE=imake

MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

USE_X11=	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
