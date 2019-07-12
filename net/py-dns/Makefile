# $OpenBSD: Makefile,v 1.22 2019/07/12 20:48:45 sthen Exp $

COMMENT =	Python DNS library

MODPY_EGG_VERSION =	2.3.6
DISTNAME =	pydns-${MODPY_EGG_VERSION}
PKGNAME =	py-dns-${MODPY_EGG_VERSION}
CATEGORIES =   	net

HOMEPAGE =	http://pydns.sourceforge.net/

# Python License
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pydns/}

MODULES =	lang/python

do-test:
	cd ${WRKSRC}/tests && for test in *.py; do \
	    PYTHONPATH=.. ${MODPY_BIN} $$test; \
	done

.include <bsd.port.mk>
