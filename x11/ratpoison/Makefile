# $OpenBSD: Makefile,v 1.8 2004/09/28 14:28:54 jcs Exp $

COMMENT=	"minimal wm based on GNU screen"

DISTNAME=	ratpoison-1.3.0
PKGNAME=	${DISTNAME}p0
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
