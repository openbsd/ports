# $OpenBSD: Makefile,v 1.12 2000/10/05 16:10:27 ian Exp $

DISTNAME=	textedit
PKGNAME=	textedit-1.0
CATEGORIES=	editors
NEED_VERSION=	 1.230

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	"No license information"
PERMIT_PACKAGE_FTP=	"No license information"
PERMIT_DISTFILES_CDROM=	"No license information"
PERMIT_DISTFILES_FTP=	"No license information"

MASTER_SITES=	http://www.darwinsys.com/freeware/

LIB_DEPENDS=    xview.3::x11/xview/lib
BUILD_DEPENDS=	${LOCALBASE}/lib/X11/config/Xview.cf::x11/xview/config

USE_IMAKE=	Yes
FAKE=		Yes

MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

.include <bsd.port.mk>
