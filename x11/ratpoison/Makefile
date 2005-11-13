# $OpenBSD: Makefile,v 1.10 2005/11/13 13:19:23 naddy Exp $

COMMENT=	"minimal wm based on GNU screen"

DISTNAME=	ratpoison-1.3.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11
HOMEPAGE=	http://www.nongnu.org/ratpoison/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xinerama c

MASTER_SITES=	http://savannah.nongnu.org/download/ratpoison/ \
		http://openbsd.rutgers.edu/

USE_X11=		Yes

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--with-xterm=${X11BASE}/bin/xterm --disable-history

.include <bsd.port.mk>
