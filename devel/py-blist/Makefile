COMMENT =		list-like type with better asymptotic performance

MODPY_EGG_VERSION =	1.3.6
DISTNAME =		blist-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		7

HOMEPAGE =		http://stutzbachenterprises.com/blist/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB = 		pthread ${MODPY_WANTLIB}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR=			python3

# fix weird permissions in the sources
post-extract:
	chmod -R a+r ${WRKSRC}

.include <bsd.port.mk>
