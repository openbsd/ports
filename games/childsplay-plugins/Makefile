# $OpenBSD: Makefile,v 1.2 2006/11/20 18:31:53 bernd Exp $

COMMENT=	"additional games modules for childsplay"

DISTNAME=	childsplay_plugins-0.84
PKGNAME=	${DISTNAME:S/_/-/}p0
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
