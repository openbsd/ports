COMMENT=	read and write audio file tags in Python

MODPY_DISTV=	0.12.0

DISTNAME=	mediafile-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	audio

HOMEPAGE=	https://github.com/beetbox/mediafile

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	flit_core

RUN_DEPENDS=	audio/py-mutagen \
		devel/py-six

.include <bsd.port.mk>
