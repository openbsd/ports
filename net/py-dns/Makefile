COMMENT =	Python DNS library

# only used by rbldnsd
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_DISTV =	2.3.6
DISTNAME =	pydns-${MODPY_DISTV}
PKGNAME =	py-dns-${MODPY_DISTV}
CATEGORIES =	net
REVISION =	0

HOMEPAGE =	https://pydns.sourceforge.net/

# Python License
PERMIT_PACKAGE =	Yes

SITES =		${SITE_SOURCEFORGE:=pydns/}

MODULES =	lang/python

do-test:
	cd ${WRKSRC}/tests && for test in *.py; do \
	    PYTHONPATH=.. ${MODPY_BIN} $$test; \
	done

.include <bsd.port.mk>
