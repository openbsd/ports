# $OpenBSD: Makefile,v 1.16 2001/10/24 12:14:50 espie Exp $

COMMENT=	"standard OpenLook text editor for X11"

DISTNAME=	textedit
PKGNAME=	textedit-1.0
CATEGORIES=	editors
NEED_VERSION=	1.474

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	"No license information"
PERMIT_PACKAGE_FTP=	"No license information"
PERMIT_DISTFILES_CDROM=	"No license information"
PERMIT_DISTFILES_FTP=	"No license information"

MASTER_SITES=	http://www.darwinsys.com/freeware/

LIB_DEPENDS=    xview.3,olgx.3::x11/xview/lib
BUILD_DEPENDS=	::x11/xview/config

CONFIGURE_STYLE=imake

MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

.include <bsd.port.mk>
