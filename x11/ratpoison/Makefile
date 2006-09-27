# $OpenBSD: Makefile,v 1.11 2006/09/27 20:12:14 jasper Exp $

COMMENT=	"minimal wm based on GNU screen"

DISTNAME=	ratpoison-1.4.0
CATEGORIES=	x11
HOMEPAGE=	http://www.nongnu.org/ratpoison/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xinerama Xtst c curses readline

MASTER_SITES=	http://savannah.nongnu.org/download/ratpoison/ \
		http://openbsd.rutgers.edu/

USE_X11=		Yes

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu autoconf

CONFIGURE_ARGS+=	--with-xterm=${X11BASE}/bin/xterm

.include <bsd.port.mk>
