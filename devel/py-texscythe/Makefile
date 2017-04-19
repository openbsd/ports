# $OpenBSD: Makefile,v 1.4 2017/04/19 13:10:16 edd Exp $

COMMENT =		TeX Live texmf subsetter tool and Python library.

DISTNAME =		texscythe-${MODPY_EGG_VERSION}
PKGNAME =		py-texscythe-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	0.3

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
	cd ${WRKBUILD} && ./texscyther -t texlive2016.tlpdb.gz --initdb
	cd ${WRKBUILD} && ./texscyther -t texlive2015.tlpdb.gz --initdb

do-test:
	@${MODPY_TEST_TARGET} --pytest-args="--runslow"

EXAMPLES =		${PREFIX}/share/examples/py-texscythe/
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/texlive201{5,6}.tlpdb.gz{,.db} ${EXAMPLES}

.include <bsd.port.mk>
