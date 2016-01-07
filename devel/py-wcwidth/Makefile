# $OpenBSD: Makefile,v 1.1.1.1 2016/01/07 08:13:29 ajacoutot Exp $

COMMENT=		measures number of terminal column cells of wide-char code

MODPY_EGG_VERSION=	0.1.5
DISTNAME=		wcwidth-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/jquast/wcwidth

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=

# requires the 'tox' command
NO_TEST=		Yes

.include <bsd.port.mk>
