COMMENT=	subprocess interface: call any program like a function

MODPY_DISTV=	2.2.2
DISTNAME=	sh-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

HOMEPAGE=	https://github.com/amoffat/sh

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
# these tests seem to rely on devfs
# (ls /dev/fd, possibly to check how many FDs are open?)
MODPY_PYTEST_ARGS= -k 'not test_close_fds and not test_pass_fds'

.include <bsd.port.mk>
