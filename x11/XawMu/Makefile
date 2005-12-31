# $OpenBSD: Makefile,v 1.6 2005/12/31 16:33:45 naddy Exp $

COMMENT=		"modern look Athena widgets"

VERSION=		1.5
DISTNAME=		XawM-${VERSION}u
PKGNAME=		XawMu-${VERSION}p1
SHARED_LIBS=		XawM 1.0
MODGNU_SHARED_LIBS=	XawM ''
CATEGORIES=		x11 devel

HOMEPAGE=		http://xawm.sourceforge.net/

MASTER_SITES=		http://siag.nu/pub/widgets/

# X11/badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

NO_REGRESS=		Yes

.include <bsd.port.mk>
