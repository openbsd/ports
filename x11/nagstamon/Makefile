COMMENT=	nagios status monitor for the Desktop

MODPY_DISTV=	3.16.2
REVISION=	1
GH_ACCOUNT=	HenriWahl
GH_PROJECT=	Nagstamon
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	${DISTNAME:L}

CATEGORIES=	x11 net

HOMEPAGE=	https://nagstamon.de/

# GPLv2 only
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS+=	security/py-keyring \
		sysutils/py-psutil

RUN_DEPENDS=	devel/desktop-file-utils

# from setup.py requirements; not including optional dbus-python,
# pysocks, requests plugins
RUN_DEPENDS +=	devel/py-arrow \
		www/py-beautifulsoup4 \
		security/py-keyring \
		textproc/py-lxml \
		sysutils/py-psutil \
		x11/py-qt6 \
		devel/py-dateutil \
		www/py-requests

NO_TEST=	Yes

P=		${WRKINST}${MODPY_SITEPKG}${TRUEPREFIX}

post-install:
	mv ${PREFIX}/bin/nagstamon{.py,}
	${INSTALL_DATA_DIR} ${PREFIX}/share/{applications,pixmaps}
	mv $P/share/pixmaps/nagstamon.svg ${PREFIX}/share/pixmaps/nagstamon.svg
	mv $P/share/applications/nagstamon.desktop ${PREFIX}/share/applications/nagstamon.desktop
	gzcat $P/man/man1/nagstamon.1.gz > ${PREFIX}/man/man1/nagstamon.1
	rm $P/man/man1/nagstamon.1.gz
	find -d ${WRKINST}/${MODPY_SITEPKG}/usr -type d -delete

.include <bsd.port.mk>
