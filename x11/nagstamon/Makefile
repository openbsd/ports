# $OpenBSD: Makefile,v 1.13 2013/07/08 09:10:37 ajacoutot Exp $

COMMENT=	nagios status monitor for the Desktop

MODPY_EGG_VERSION= 0.9.9
DISTNAME=	nagstamon_${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/_/-/}
REVISION=	2

CATEGORIES=	x11 net

HOMEPAGE=	http://nagstamon.ifw-dresden.de/

MAINTAINER=	Nicolas P. M. Legrand <nlegrand@ethelred.fr>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nagstamon/}

PKG_ARCH=	*

MODULES=	lang/python

RUN_DEPENDS=	textproc/py-lxml \
		x11/py-gtk2 \
		audio/sox

NO_TEST=	Yes

WRKDIST = ${WRKDIR}/Nagstamon

MODPY_ADJ_FILES=nagstamon.py \
		Nagstamon/Server/Multisite.py

post-install:
	cd ${PREFIX}/bin && ln -s nagstamon.py nagstamon

.include <bsd.port.mk>
