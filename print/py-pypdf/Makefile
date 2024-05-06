COMMENT=		Python library for manipulating pages of PDF files

MODPY_EGG_VERSION=	4.2.0
DISTNAME=		pypdf-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		1

CATEGORIES=		print graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes

MODPY_PYBUILD=		flit_core

FLAVORS=		python3
FLAVOR=			python3

# XXX python_version < '3.11'
RUN_DEPENDS +=		devel/py-typing-extensions${MODPY_FLAVOR}

.include <bsd.port.mk>
