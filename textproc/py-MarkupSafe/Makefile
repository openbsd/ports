COMMENT=		implements an XML/HTML/XHTML markup safe string

MODPY_EGG_VERSION=	2.1.1
DISTNAME=		MarkupSafe-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		textproc

# BSD
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

WANTLIB+=		${MODPY_WANTLIB} pthread

MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
