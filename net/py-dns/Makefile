COMMENT =	Python DNS library

MODPY_EGG_VERSION =	2.3.6
DISTNAME =	pydns-${MODPY_EGG_VERSION}
PKGNAME =	py-dns-${MODPY_EGG_VERSION}
CATEGORIES =   	net

HOMEPAGE =	http://pydns.sourceforge.net/

# Python License
PERMIT_PACKAGE =	Yes

SITES =		${SITE_SOURCEFORGE:=pydns/}

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

do-test:
	cd ${WRKSRC}/tests && for test in *.py; do \
	    PYTHONPATH=.. ${MODPY_BIN} $$test; \
	done

.include <bsd.port.mk>
