# $OpenBSD: Makefile,v 1.1.1.1 2007/06/24 10:29:40 martynas Exp $

COMMENT=		"agile development and test support library"

V=			0.9.0
DISTNAME=		py-${V}
PKGNAME=		py-py-${V}

CATEGORIES=		devel lang/python

HOMEPAGE=		http://codespeak.net/pypy/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://codespeak.net/download/py/

MODULES=		lang/python

NO_REGRESS=		Yes

MODPY_DISTUTILS_INSTALL=	install --prefix=${LOCALBASE} \
					--root=${DESTDIR}

post-install:
	rm -fr ${DESTDIR}${MODPY_SITEPKG}/py/c-extension/greenlet/build

.include <bsd.port.mk>
