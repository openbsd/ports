# $OpenBSD: Makefile,v 1.6 2004/02/27 17:01:53 jcs Exp $

COMMENT=	"minimal wm based on GNU screen"

DISTNAME=	ratpoison-1.3.0-rc1
PKGNAME=	ratpoison-1.3.0rc1
CATEGORIES=	x11
HOMEPAGE=	http://ratpoison.sourceforge.net/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ratpoison/} \
		http://openbsd.rutgers.edu/

USE_X11=		Yes

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--with-xterm=${X11BASE}/bin/xterm --disable-history

.include <bsd.port.mk>
