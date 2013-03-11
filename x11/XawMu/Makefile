# $OpenBSD: Makefile,v 1.13 2013/03/11 11:46:08 espie Exp $

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


USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
USE_X11 =		Yes

NO_TEST=		Yes

.include <bsd.port.mk>
