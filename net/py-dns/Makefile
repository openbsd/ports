# $OpenBSD: Makefile,v 1.21 2013/03/11 11:35:55 espie Exp $

COMMENT =	Python DNS library

MODPY_EGG_VERSION =	2.3.6
DISTNAME =	pydns-${MODPY_EGG_VERSION}
PKGNAME =	py-dns-${MODPY_EGG_VERSION}
CATEGORIES =   	net

HOMEPAGE =	http://pydns.sourceforge.net/

# Python License
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pydns/}

MODULES =	lang/python

do-test:
	cd ${WRKSRC}/tests && for test in *.py; do \
	    PYTHONPATH=.. ${MODPY_BIN} $$test; \
	done

.include <bsd.port.mk>
