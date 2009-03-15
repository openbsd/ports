# $OpenBSD: Makefile,v 1.9 2009/03/15 14:39:02 espie Exp $

COMMENT=	additional games modules for childsplay

V=		0.85.2
DISTNAME=	childsplay_plugins-${V}
PKGNAME=	childsplay-plugins-${V}p1
EXTRACT_SUFX=	.tgz

CATEGORIES=	games education

HOMEPAGE=	http://childsplay.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=childsplay/}

MODULES=	lang/python
RUN_DEPENDS=	:childsplay->=0.84:games/childsplay

PKG_ARCH=	*
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g;' \
		-e 's,!!MODPY_BIN!!,${MODPY_BIN},g;' \
		-e 's,!!DESTDIR!!,${DESTDIR},g' \
		${WRKSRC}/install.sh
	perl -pi -e 's,/usr/local/games,${LOCALBASE}/share,g' \
		${WRKSRC}/README ${WRKSRC}/README-PACKID
	cd ${WRKSRC} && /bin/sh install.sh

.include <bsd.port.mk>
