# $OpenBSD: Makefile,v 1.2 2004/12/17 15:18:32 alek Exp $

COMMENT=	"calm window manager"
DISTNAME=	calmwm-0.95
PKGNAME=	${DISTNAME:S/alm//}
CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://monkey.org/~marius/cwm/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		X11 Xext c

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
