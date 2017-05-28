# $OpenBSD: Makefile,v 1.13 2017/05/28 13:52:31 jasper Exp $

COMMENT =		iCalendar library for Python

MODPY_EGG_VERSION =	0.9.4.1
DISTNAME =		vobject-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES=		textproc devel

HOMEPAGE=		http://eventable.github.io/vobject/

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/python
MODPY_PI=		Yes
FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-dateutil${MODPY_FLAVOR}

post-install:
.for b in change_tz ics_diff
	mv ${PREFIX}/bin/$b{,${MODPY_BIN_SUFFIX}}
.endfor

.include <bsd.port.mk>
