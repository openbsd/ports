# $OpenBSD: Makefile,v 1.17 2019/11/26 00:28:48 kmos Exp $

COMMENT =		iCalendar library for Python

MODPY_EGG_VERSION =	0.9.6.1
DISTNAME =		vobject-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES=		textproc devel

HOMEPAGE=		http://eventable.github.io/vobject/

# Apache2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/python
MODPY_PI=		Yes
FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests.py

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

post-install:
.for b in change_tz ics_diff
	mv ${PREFIX}/bin/$b{,${MODPY_BIN_SUFFIX}}
.endfor

.include <bsd.port.mk>
