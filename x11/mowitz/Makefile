# $OpenBSD: Makefile,v 1.6 2006/09/18 10:21:49 espie Exp $

COMMENT=		"widgets library"

DISTNAME=		Mowitz-0.2.2
PKGNAME=		${DISTNAME:L}p0
SHARED_LIBS=		Mowitz 2.2
CATEGORIES=		x11 devel

HOMEPAGE=		http://siag.nu/mowitz/

MASTER_SITES=		http://siag.nu/pub/mowitz/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m 

USE_X11=		Yes

LIB_DEPENDS=		XawM.>=1::x11/XawMu

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

.include <bsd.port.mk>
