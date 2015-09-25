# $OpenBSD: Makefile,v 1.4 2015/09/25 12:50:08 sthen Exp $

PKG_ARCH=		*

COMMENT=		nice fixed width fonts, easy on the eye

V=			3.0
REVISION=		4
DISTNAME=		jmk-x11-fonts-${V}
PKGNAME=		jmk-fonts-${V}

CATEGORIES=		fonts x11

HOMEPAGE=		http://www.jmknoble.net/fonts/

MAINTAINER=		Jon Olsson <jon@abc.se>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	imake


NO_TEST=		Yes

post-install:
	cd ${PREFIX}/share/fonts/jmk && mv fonts.alias fonts.alias-jmk

.include <bsd.port.mk>
