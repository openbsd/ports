# $OpenBSD: Makefile,v 1.15 2014/08/10 08:11:06 ajacoutot Exp $

COMMENT=		nagios status monitor for the Desktop

MODPY_EGG_VERSION=	1.0
DISTNAME=		Nagstamon-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:L}
WRKDIST=		${WRKDIR}/Nagstamon

CATEGORIES=		x11 net

HOMEPAGE=		http://nagstamon.ifw-dresden.de/

MAINTAINER=		Nicolas P. M. Legrand <nlegrand@ethelred.fr>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=nagstamon/}

PKG_ARCH=		*

MODULES=		lang/python

RUN_DEPENDS=		audio/sox \
			security/py-keyring \
			textproc/py-lxml \
			x11/py-gtk2

NO_TEST=		Yes

MODPY_ADJ_FILES=	nagstamon.py

post-install:
	cd ${PREFIX}/bin && mv nagstamon.py nagstamon

.include <bsd.port.mk>
