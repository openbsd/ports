# $OpenBSD: Makefile,v 1.11 2000/04/04 21:18:23 espie Exp $

DISTNAME=	textedit
PKGNAME=	textedit-1.0
CATEGORIES=	editors
NEED_VERSION=	 1.230

MAINTAINER=	ian@OpenBSD.ORG

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
