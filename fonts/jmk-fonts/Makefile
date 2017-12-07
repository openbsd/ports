# $OpenBSD: Makefile,v 1.6 2017/12/07 13:12:44 espie Exp $

PKG_ARCH=		*

COMMENT=		nice fixed width fonts, easy on the eye

V=			3.0
REVISION=		5
DISTNAME=		jmk-x11-fonts-${V}
PKGNAME=		jmk-fonts-${V}
FIX_EXTRACT_PERMISSIONS=Yes

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
