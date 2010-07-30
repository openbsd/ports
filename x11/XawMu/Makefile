# $OpenBSD: Makefile,v 1.10 2010/07/30 06:58:57 ajacoutot Exp $

COMMENT=		modern look Athena widgets

VERSION=		1.5
DISTNAME=		XawM-${VERSION}u
PKGNAME=		XawMu-${VERSION}
REVISION=		2

SHARED_LIBS=		XawM 1.0
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
