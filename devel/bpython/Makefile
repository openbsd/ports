COMMENT=	fancy interface to the Python interpreter

MODPY_DISTV=	0.24
DISTNAME=	bpython-${MODPY_DISTV}
CATEGORIES=	devel

HOMEPAGE=	https://bpython-interpreter.org/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

SITES=		${HOMEPAGE}/releases/

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-curtsies \
		devel/py-cwcwidth \
		devel/py-greenlet \
		textproc/py-pygments \
		devel/py-xdg \
		www/py-requests \
		devel/py-jedi \
		devel/py-urwid \
		sysutils/py-pyperclip \
		sysutils/py-watchdog
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
