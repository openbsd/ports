# $OpenBSD: Makefile,v 1.1.1.1 2011/09/28 12:36:26 mpi Exp $

COMMENT =		module for handling IPv4 and IPv6 Addresses and Networks

MODPY_EGG_VERSION =	0.75
DISTNAME =		IPy-${MODPY_EGG_VERSION}
PKGNAME =		py-ipy-${MODPY_EGG_VERSION}

CATEGORIES =		net

HOMEPAGE =		http://c0re.23.nu/c0de/IPy

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# MIT 
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=I/IPy/}

MODULES =		lang/python

do-regress: fake
	@cd ${WRKSRC}/test && \
	env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} test_IPy.py

.include <bsd.port.mk>
