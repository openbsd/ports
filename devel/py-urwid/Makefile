COMMENT=	console user interface library for python

# 20251210: not 3.0.4 yet; https://github.com/ihabunek/toot/issues/558
MODPY_DISTV=	3.0.3
DISTNAME=	urwid-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

EPOCH=		0

# https://github.com/urwid/urwid
HOMEPAGE=	https://urwid.org/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

TEST_DEPENDS=	devel/py-gobject3 \
		devel/py-test-cov \
		devel/py-trio \
		devel/py-twisted \
		net/py-zmq \
		www/py-tornado

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

MODPY_PYTEST_ARGS= --ignore urwid/display/_win32.py \
		   --ignore urwid/display/_win32_raw_display.py

RUN_DEPENDS=	devel/py-typing-extensions \
		devel/py-wcwidth

.include <bsd.port.mk>
