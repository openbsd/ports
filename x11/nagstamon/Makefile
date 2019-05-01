# $OpenBSD: Makefile,v 1.24 2019/05/01 19:57:08 sthen Exp $

COMMENT=		nagios status monitor for the Desktop

MODPY_EGG_VERSION=	3.2
DISTNAME=		Nagstamon-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:L}
WRKDIST=		${WRKDIR}/Nagstamon
REVISION=		1

CATEGORIES=		x11 net

HOMEPAGE=		http://nagstamon.ifw-dresden.de/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://nagstamon.ifw-dresden.de/files/stable/

MODULES=		lang/python

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		security/py-keyring${MODPY_FLAVOR}

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
