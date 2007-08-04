# $OpenBSD: Makefile,v 1.3 2007/08/04 20:43:38 ajacoutot Exp $

COMMENT=		nice fixed width fonts, easy on the eye

V=			3.0
DISTNAME=		jmk-x11-fonts-${V}
PKGNAME=		jmk-fonts-${V}p0
CATEGORIES=		x11

HOMEPAGE=		http://www.jmknoble.net/fonts/

MAINTAINER=		Jon Olsson <jon@abc.se>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	imake

USE_X11=		Yes

NO_REGRESS=		Yes

post-install:
	cd ${PREFIX}/lib/X11/fonts/jmk && mv fonts.alias fonts.alias-jmk

.include <bsd.port.mk>
