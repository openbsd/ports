# $OpenBSD: Makefile,v 1.2 2006/12/08 06:53:39 ajacoutot Exp $

COMMENT=	"suite of educational games for young children"

DISTNAME=	childsplay-0.85.1
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
RUN_DEPENDS=	:pygame->=1.7:devel/pygame \
		:python-expat-${MODPY_VERSION}.*:lang/python/${MODPY_VERSION},-expat

PKG_ARCH=	*
USE_X11=	Yes
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g;' \
		-e 's,!!DESTDIR!!,${DESTDIR},g;' \
		-e 's,!!MODPY_BIN!!,${MODPY_BIN},g' \
		${WRKSRC}/INSTALL.sh
	perl -pi -e 's,/usr/local/lib/games,${LOCALBASE}/share,g' \
		${WRKSRC}/childsplay.sh
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' \
		${WRKSRC}/childsplay.py ${WRKSRC}/letters-trans.py \
		${WRKSRC}/pyassetmlcreator.py
	cd ${WRKSRC} && /bin/sh INSTALL.sh
	${INSTALL_DATA} ${WRKSRC}/README-MEMORY \
		${PREFIX}/share/doc/childsplay

.include <bsd.port.mk>
