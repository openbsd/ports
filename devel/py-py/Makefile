# $OpenBSD: Makefile,v 1.15 2012/06/27 19:09:50 rpointel Exp $

COMMENT=		cross-python path, ini-parsing, io, code, log facilities

MODPY_EGG_VERSION=	1.4.7
DISTNAME=		py-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		0

EXTRACT_SUFX=		.zip

CATEGORIES=		devel

HOMEPAGE=		http://doc.pylib.org/en/latest/

MAINTAINER=		Eric Faurot <eric@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=p/py/}

WANTLIB +=		${MODPY_WANTLIB}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

NO_REGRESS=		Yes

.include <bsd.port.mk>
