# $OpenBSD: Makefile,v 1.3 2016/05/04 22:49:07 edd Exp $

COMMENT =		TeX Live texmf subsetter tool and Python library.

DISTNAME =		texscythe-${MODPY_EGG_VERSION}
PKGNAME =		py-texscythe-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	0.2.0.1

CATEGORIES =		devel print

HOMEPAGE =		https://github.com/vext01/texscythe
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python
RUN_DEPENDS +=		databases/py-sqlalchemy
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test
BUILD_DEPENDS +=	${RUN_DEPENDS}

# pre-build database for last two texlive versions.
# texlive port can then use these directly for PLIST generation.
post-build:
	cd ${WRKBUILD} && ./texscyther -t texlive2015.tlpdb.gz --initdb
	cd ${WRKBUILD} && ./texscyther -t texlive2014.tlpdb.gz --initdb

do-test:
	@${MODPY_TEST_TARGET} --pytest-args="--runslow"

EXAMPLES =		${PREFIX}/share/examples/py-texscythe/
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/texlive201{4,5}.tlpdb.gz{,.db} ${EXAMPLES}

.include <bsd.port.mk>
