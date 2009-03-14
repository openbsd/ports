# $OpenBSD: Makefile,v 1.3 2009/03/14 12:24:48 espie Exp $

COMMENT =	declarative mapper for SQLAlchemy

MODPY_EGG_VERSION =	0.6.1
DISTNAME =	Elixir-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}p0

CATEGORIES =	databases

HOMEPAGE =	http://elixir.ematia.de/trac/wiki

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://pypi.python.org/packages/source/E/Elixir/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		::databases/py-sqlalchemy \
			::security/py-crypto
REGRESS_DEPENDS =	::databases/py-sqlite2 \
			${RUN_DEPENDS}

do-regress: fake
	@cd ${WRKSRC}/tests; for i in `echo test_*.py`; do \
	    echo $$i; ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${MODPY_BIN} $$i; \
	done

.include <bsd.port.mk>
