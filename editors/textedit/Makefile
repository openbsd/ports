# $OpenBSD: Makefile,v 1.28 2010/10/24 21:16:25 ajacoutot Exp $

COMMENT=	standard OpenLook text editor for X11

DISTNAME=	textedit
PKGNAME=	textedit-1.0
REVISION=	2
CATEGORIES=	editors

PERMIT_PACKAGE_CDROM=	No license information
PERMIT_PACKAGE_FTP=	No license information
PERMIT_DISTFILES_CDROM=	No license information
PERMIT_DISTFILES_FTP=	No license information

WANTLIB=		X11 Xext c pthread-stubs xcb xview olgx

MASTER_SITES=	http://www.darwinsys.com/freeware/

LIB_DEPENDS=    ::x11/xview/lib
BUILD_DEPENDS=	::x11/xview/config

CONFIGURE_STYLE=imake

MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
