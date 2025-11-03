COMMENT=	read/write AIFF audio files

MODPY_DISTV=	3.13.0
DISTNAME=	standard_aifc-${MODPY_DISTV}
PKGNAME=	py-standard-aifc-${MODPY_DISTV}
CATEGORIES=	audio

HOMEPAGE=	https://github.com/youknowone/python-deadlib

# PSF-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	audio/py-standard-chunk \
		audio/py-audioop-lts

.include <bsd.port.mk>
