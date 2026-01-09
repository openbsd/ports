COMMENT=	read and write audio file tags in Python

MODPY_DISTV=	0.14.0
GH_ACCOUNT=	beetbox
GH_PROJECT=	mediafile
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	audio

HOMEPAGE=	https://mediafile.readthedocs.io/en/latest/
# https://github.com/beetbox/mediafile (but changelogs on rtd ^^)

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core

RUN_DEPENDS=	audio/py-mutagen \
		devel/py-filetype

.include <bsd.port.mk>
