# $OpenBSD: Makefile,v 1.2 2004/12/17 15:18:33 alek Exp $

COMMENT=		"widgets library"

VERSION=		0.2.2
DISTNAME=		Mowitz-${VERSION}
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11 devel

HOMEPAGE=		http://siag.nu/mowitz/

MASTER_SITES=		http://siag.nu/pub/mowitz/

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m 

USE_X11=		Yes

LIB_DEPENDS=		XawM.1::x11/XawMu

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

.include <bsd.port.mk>
