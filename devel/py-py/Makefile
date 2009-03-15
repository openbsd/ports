# $OpenBSD: Makefile,v 1.7 2009/03/15 13:03:41 espie Exp $

ONLY_FOR_ARCHS=		i386 amd64 powerpc

COMMENT=		agile development and test support library

MODPY_EGG_VERSION=	0.9.1
DISTNAME=		py-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}p0

CATEGORIES=		devel

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
	rm -f ${DESTDIR}${MODPY_SITEPKG}/py/c-extension/greenlet/slp_platformselect.h.orig

.include <bsd.port.mk>
