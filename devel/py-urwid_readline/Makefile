COMMENT=	text input widget for urwid supporting readline shortcuts

MODPY_DISTV=	0.15.1
DISTNAME=	urwid_readline-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/rr-/urwid_readline

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-urwid

.include <bsd.port.mk>
