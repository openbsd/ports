# $OpenBSD: Makefile,v 1.1.1.1 2016/04/29 09:06:01 eric Exp $

COMMENT =		list-like type with better asymptotic performance

MODPY_EGG_VERSION =	1.3.6
DISTNAME =		blist-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		http://stutzbachenterprises.com/blist/

MAINTAINER =		Eric Faurot <eric@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		pthread ${MODPY_WANTLIB}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

# fix weird permissions in the sources
post-extract:
	chmod -R a+r ${WRKSRC}

.include <bsd.port.mk>
