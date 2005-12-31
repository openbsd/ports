# $OpenBSD: Makefile,v 1.6 2005/12/31 16:33:45 naddy Exp $

COMMENT=		"libXaw widget set replacement"

DISTNAME=		neXtaw-0.14.0
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		neXtaw 14.0
MODGNU_SHARED_LIBS=	neXtaw ''
CATEGORIES=		x11 devel

HOMEPAGE=		http://siag.nu/neXtaw/

MASTER_SITES=		http://siag.nu/pub/neXtaw/

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		Xext Xmu 

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV+=		CPPFLAGS="-I${X11BASE}/include"

NO_REGRESS=		Yes

.include <bsd.port.mk>
