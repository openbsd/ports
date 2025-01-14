COMMENT=	read and write audio file tags in Python

MODPY_DISTV=	0.13.0
DISTNAME=	mediafile-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	audio

HOMEPAGE=	https://mediafile.readthedocs.io/en/latest/
# https://github.com/beetbox/mediafile (but changelogs on rtd ^^)

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	audio/py-mutagen \
		devel/py-filetype

.include <bsd.port.mk>
