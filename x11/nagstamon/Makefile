# $OpenBSD: Makefile,v 1.32 2021/11/02 00:02:59 sthen Exp $

COMMENT=		nagios status monitor for the Desktop

MODPY_EGG_VERSION=	3.4.1
DISTNAME=		Nagstamon-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:L}
WRKDIST=		${WRKDIR}/Nagstamon
REVISION=		1

CATEGORIES=		x11 net

HOMEPAGE=		http://nagstamon.ifw-dresden.de/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://nagstamon.ifw-dresden.de/files/stable/

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils \
			security/py-keyring${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}

NO_TEST=		Yes

post-install:
	cd ${PREFIX}/bin && mv nagstamon.py nagstamon
	gunzip ${PREFIX}/man/man1/nagstamon.1.gz

.include <bsd.port.mk>
