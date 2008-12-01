# $OpenBSD: Makefile,v 1.10 2008/12/01 19:16:39 jasper Exp $

COMMENT=		widgets library

DISTNAME=		Mowitz-0.3.0
PKGNAME=		${DISTNAME:L}p2
SHARED_LIBS +=	Mowitz               3.0      # .3.0
CATEGORIES=		x11 devel

HOMEPAGE=		http://siag.nu/mowitz/

# GPLv2/LGPLv2/MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m 

MASTER_SITES=		http://siag.nu/pub/mowitz/

LIB_DEPENDS=		neXtaw.>=13::x11/neXtaw

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
