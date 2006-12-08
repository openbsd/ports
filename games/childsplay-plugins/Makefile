# $OpenBSD: Makefile,v 1.4 2006/12/08 06:54:33 ajacoutot Exp $

COMMENT=	"additional games modules for childsplay"

V=		0.85
DISTNAME=	childsplay_plugins-${V}
PKGNAME=	childsplay-plugins-${V}
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
USE_X11=	Yes
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
