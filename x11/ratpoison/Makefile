# $OpenBSD: Makefile,v 1.12 2007/03/16 22:27:45 martynas Exp $

COMMENT=	"minimal wm based on GNU screen"

DISTNAME=	ratpoison-1.4.1
CATEGORIES=	x11
HOMEPAGE=	http://www.nongnu.org/ratpoison/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xinerama Xtst c

MASTER_SITES=	http://savannah.nongnu.org/download/ratpoison/

USE_X11=		Yes

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--with-xterm=${X11BASE}/bin/xterm \
			--disable-history

.include <bsd.port.mk>
