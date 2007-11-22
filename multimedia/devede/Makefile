# $OpenBSD: Makefile,v 1.4 2007/11/22 09:36:43 ajacoutot Exp $

COMMENT=	video DVDs and CDs creation tool

DISTNAME=	devede-3.4
CATEGORIES=	multimedia x11

EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=	http://www.rastersoft.com/programas/devede.html

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.rastersoft.com/descargas/

MODULES=	lang/python

RUN_DEPENDS=	::x11/py-gtk2 \
		::multimedia/dvdauthor \
		::graphics/vcdimager \
		::sysutils/cdrtools \
		::x11/mplayer \
		:desktop-file-utils-*:devel/desktop-file-utils

.if ${MACHINE_ARCH} == "i386"
RUN_DEPENDS+=	::devel/py-psyco
PKG_ARCH=	${MACHINE_ARCH},${ARCH}
.else
PKG_ARCH=	*
.endif

NO_BUILD=	Yes
NO_REGRESS=	Yes

pre-configure:
	@find ${WRKSRC} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g;' \
		-e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/{devede_other,devede_executor,devede}.py

do-install:
	cd ${WRKSRC} && /bin/sh install.sh prefix=${TRUEPREFIX} uninstall=no

.include <bsd.port.mk>
