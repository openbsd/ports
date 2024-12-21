COMMENT=		nagios status monitor for the Desktop

MODPY_DISTV=	3.8.0
GH_ACCOUNT=		HenriWahl
GH_PROJECT=		Nagstamon
GH_TAGNAME=		v${MODPY_DISTV}
PKGNAME=		${DISTNAME:L}
#WRKDIST=		${WRKDIR}/Nagstamon-${MODPY_DISTV}
REVISION=		4

CATEGORIES=		x11 net

HOMEPAGE=		http://nagstamon.ifw-dresden.de/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils \
			security/py-keyring \
			sysutils/py-psutil \
			www/py-beautifulsoup4 \
			www/py-requests \
			x11/py-qt5

NO_TEST=		Yes

post-install:
	cd ${PREFIX}/bin && mv nagstamon.py nagstamon
	gunzip ${PREFIX}/man/man1/nagstamon.1.gz

.include <bsd.port.mk>
