COMMENT=		nagios status monitor for the Desktop

MODPY_DISTV=	3.16.2
GH_ACCOUNT=		HenriWahl
GH_PROJECT=		Nagstamon
GH_TAGNAME=		v${MODPY_DISTV}
PKGNAME=		${DISTNAME:L}
#WRKDIST=		${WRKDIR}/Nagstamon-${MODPY_DISTV}

CATEGORIES=		x11 net

HOMEPAGE=		https://nagstamon.de/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PYBUILD =		setuptools

BUILD_DEPENDS=		${RUN_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils \
			security/py-keyring \
			sysutils/py-psutil \
			www/py-beautifulsoup4 \
			www/py-requests \
			x11/py-qt6

NO_TEST=		Yes

post-install:
	cd ${PREFIX}/bin && mv nagstamon.py nagstamon
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKINST}${MODPY_SITEPKG}${TRUEPREFIX}/share/pixmaps/nagstamon.svg ${PREFIX}/share/pixmaps/nagstamon.svg
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKINST}${MODPY_SITEPKG}${TRUEPREFIX}/share/applications/nagstamon.desktop ${PREFIX}/share/applications/nagstamon.desktop
	${INSTALL_DATA} ${WRKINST}${MODPY_SITEPKG}${TRUEPREFIX}/man/man1/nagstamon.1.gz ${PREFIX}/man/man1/nagstamon.1.gz
	rm -Rf ${WRKINST}/${MODPY_SITEPKG}/usr
	gunzip ${PREFIX}/man/man1/nagstamon.1.gz

.include <bsd.port.mk>
