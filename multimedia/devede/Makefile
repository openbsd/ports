# $OpenBSD: Makefile,v 1.36 2013/09/10 13:26:46 ajacoutot Exp $

COMMENT=	video DVDs and CDs creation tool

DISTNAME=	devede-3.23.0
REVISION=	0

CATEGORIES=	multimedia x11

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.rastersoft.com/programas/devede.html

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.rastersoft.com/descargas/

MODULES=	lang/python

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/xdg-utils \
		graphics/vcdimager \
		multimedia/dvdauthor \
		sysutils/cdrtools \
		x11/dbus-python \
		x11/mplayer \
		x11/py-gtk2

PKG_ARCH=	*
NO_BUILD=	Yes
NO_TEST=	Yes

MODPY_ADJ_FILES=devede

SUBST_VARS=	^MODPY_SITEPKG

pre-configure:
	@find ${WRKSRC} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'
	${SUBST_CMD} \
		${WRKSRC}/{devede_other,devede_executor,devede,devede_fonts}.py

do-install:
	cd ${WRKSRC} && \
		/bin/sh install.sh prefix=${TRUEPREFIX} uninstall=no
	find ${PREFIX} -name \*.orig -or -name \*~ | xargs rm

.include <bsd.port.mk>
