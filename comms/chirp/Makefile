COMMENT=	tool to programme a wide range of amateur radios

MODPY_DISTV=	20240224
DISTNAME=	chirp-${MODPY_DISTV}
REVISION=	1

CATEGORIES=	comms hamradio

HOMEPAGE=	https://chirp.danplanet.com/

# GPLv3+
PERMIT_PACKAGE=	Yes

SITES=	https://trac.chirp.danplanet.com/chirp_next/next-${MODPY_DISTV}/

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/py-serial

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-future \
		devel/py-serial \
		devel/py-six \
		devel/py-suds \
		www/py-requests \
		x11/py-wxPython

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{applications,pixmaps}/
	cp ${WRKINST}${MODPY_SITEPKG}/chirp/share/chirp.desktop \
		${PREFIX}/share/applications/
	ln -sf ${MODPY_SITEPKG}/chirp/share/chirp.png \
		${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
