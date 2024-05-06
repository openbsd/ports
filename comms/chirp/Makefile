COMMENT=	tool to programme a wide range of amateur radios

MODPY_EGG_VERSION= 20240224
DISTNAME=	chirp-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	comms hamradio

HOMEPAGE=	https://chirp.danplanet.com/

# GPLv3+
PERMIT_PACKAGE=	Yes

SITES=	https://trac.chirp.danplanet.com/chirp_next/next-${MODPY_EGG_VERSION}/

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/py-serial${MODPY_FLAVOR}

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-future${MODPY_FLAVOR} \
		devel/py-serial${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/py-suds${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		x11/py-wxPython${MODPY_FLAVOR}

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{applications,pixmaps}/
	cp ${WRKINST}${MODPY_SITEPKG}/chirp/share/chirp.desktop \
		${PREFIX}/share/applications/
	ln -sf ${MODPY_SITEPKG}/chirp/share/chirp.png \
		${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
