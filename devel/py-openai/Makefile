COMMENT=	OpenAI API client library for Python

MODPY_DISTV=	2.43.0
DISTNAME=	openai-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

BUILD_DEPENDS=	devel/py-hatch-fancy-pypi-readme

RUN_DEPENDS=	textproc/py-jiter \
		devel/py-pydantic<3 \
		devel/py-sniffio \
		devel/py-tqdm \
		devel/py-typing-extensions<5 \
		net/py-anyio<5 \
		sysutils/py-distro<2 \
		www/py-httpx<1

# Most tests require a steady mock server
NO_TEST=	Yes

.include <bsd.port.mk>
