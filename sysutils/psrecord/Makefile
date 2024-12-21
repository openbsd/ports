COMMENT=	record the CPU and memory activity of a process

MODPY_DISTV=	1.4

DISTNAME=	psrecord-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/astrofrog/psrecord

# BSD-2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
#MODPY_TEST_DIR=	${WRKSRC}/psrecord

RUN_DEPENDS=	sysutils/py-psutil

.include <bsd.port.mk>
