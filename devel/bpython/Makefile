# $OpenBSD: Makefile,v 1.26 2019/09/22 21:46:07 kmos Exp $

COMMENT=	fancy interface to the Python interpreter

MODPY_EGG_VERSION=0.18
DISTNAME=	bpython-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	https://bpython-interpreter.org/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES=	${HOMEPAGE}/releases/

MODULES=	lang/python

MODPY_SETUPTOOLS=Yes

FLAVORS =	python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
PKGNAME =	bpython${MODPY_MAJOR_VERSION}-${MODPY_EGG_VERSION}
.endif

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-curtsies${MODPY_FLAVOR} \
		devel/py-greenlet${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/py-urwid${MODPY_FLAVOR} \
		textproc/py-pygments${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}
BUILD_DEPENDS=	devel/py-babel${MODPY_FLAVOR} \
		textproc/py-sphinx${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-mock${MODPY_FLAVOR} \
		devel/py-twisted${MODPY_FLAVOR}

# de-conflict flavors
post-install:
.for b in bpdb bpython bpython-curses bpython-urwid
	mv ${PREFIX}/bin/$b{,${MODPY_BIN_SUFFIX}}
.endfor
	mv ${PREFIX}/man/man1/bpython{,${MODPY_BIN_SUFFIX}}.1
	mv ${PREFIX}/man/man5/bpython-config{,${MODPY_BIN_SUFFIX}}.5
	mv ${PREFIX}/share/appinfo/org.bpython-interpreter.bpython{,${MODPY_BIN_SUFFIX}}.appdata.xml
	mv ${PREFIX}/share/applications/org.bpython-interpreter.bpython{,${MODPY_BIN_SUFFIX}}.desktop
	mv ${PREFIX}/share/pixmaps/bpython{,${MODPY_BIN_SUFFIX}}.png


.include <bsd.port.mk>
