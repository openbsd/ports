# $OpenBSD: Makefile,v 1.19 2011/09/17 18:05:50 jakob Exp $

COMMENT =	Python DNS library

MODPY_EGG_VERSION =	2.3.5
DISTNAME =	pydns-${MODPY_EGG_VERSION}
PKGNAME =	py-dns-${MODPY_EGG_VERSION}
REVISION=		1
CATEGORIES =   	net

HOMEPAGE =	http://pydns.sourceforge.net/

# Python License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pydns/}

MODULES =	lang/python

do-regress:
	cd ${WRKSRC}/tests && for test in *.py; do \
	    PYTHONPATH=.. ${MODPY_BIN} $$test; \
	done

.include <bsd.port.mk>
