# $OpenBSD: Makefile,v 1.5 2005/08/17 16:10:05 espie Exp $

COMMENT=		"modern look Athena widgets"

VERSION=		1.5
DISTNAME=		XawM-${VERSION}u
PKGNAME=		XawMu-${VERSION}p0
CATEGORIES=		x11 devel

HOMEPAGE=		http://xawm.sourceforge.net/

MASTER_SITES=		http://siag.nu/pub/widgets/

# X11/badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

NO_REGRESS=		Yes

.include <bsd.port.mk>
