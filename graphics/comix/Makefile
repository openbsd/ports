# $OpenBSD: Makefile,v 1.9 2008/10/08 16:02:29 jasper Exp $

COMMENT=	gtk2 comic book viewer

DISTNAME=	comix-3.6.5
CATEGORIES=	graphics

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=comix/}

MODULES=	lang/python
PY_FLAVOR=	python${MODPY_VERSION}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:py-Imaging-*-${PY_FLAVOR}:graphics/py-Imaging,${PY_FLAVOR} \
		::x11/py-gtk2 \
		:desktop-file-utils-*:devel/desktop-file-utils

NO_REGRESS=	Yes

post-extract:
		${GUNZIP_CMD} ${WRKSRC}/comix.1.gz

do-build:
		# defined as empty to override do-build target from python module

do-install:
		cd ${WRKSRC} && ${MODPY_BIN} install.py --installdir ${PREFIX} \
		       	--no-mime --no-balloon install
		perl -pi -e "s,#!/usr/bin/env python,#!${MODPY_BIN}," \
			${PREFIX}/bin/comix

PKG_ARCH=	*

.include <bsd.port.mk>
