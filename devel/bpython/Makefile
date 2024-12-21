COMMENT=	fancy interface to the Python interpreter

MODPY_DISTV=0.18
DISTNAME=	bpython-${MODPY_DISTV}
CATEGORIES=	devel
REVISION=	6

HOMEPAGE=	https://bpython-interpreter.org/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

SITES=		${HOMEPAGE}/releases/

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-curtsies \
		devel/py-greenlet \
		devel/py-six \
		devel/py-urwid \
		textproc/py-pygments \
		www/py-requests
BUILD_DEPENDS=	devel/py-babel \
		textproc/py-sphinx

TEST_DEPENDS=	devel/py-mock \
		devel/py-twisted

post-build:
	cd ${WRKSRC}; sphinx-build -b man doc/sphinx/source build

post-install:
	${INSTALL_MAN} ${WRKSRC}/build/bpython.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/build/bpython-config.5 ${PREFIX}/man/man5/

.include <bsd.port.mk>
