COMMENT=		nagios status monitor for the Desktop

MODPY_EGG_VERSION=	3.8.0
GH_ACCOUNT=		HenriWahl
GH_PROJECT=		Nagstamon
GH_TAGNAME=		v${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:L}
#WRKDIST=		${WRKDIR}/Nagstamon-${MODPY_EGG_VERSION}

CATEGORIES=		x11 net

HOMEPAGE=		http://nagstamon.ifw-dresden.de/

# GPLv2
PERMIT_PACKAGE=	Yes

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
