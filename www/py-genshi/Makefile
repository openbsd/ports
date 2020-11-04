# $OpenBSD: Makefile,v 1.21 2020/11/04 15:01:28 sthen Exp $

COMMENT =	toolkit for generation of output for the web

MODPY_EGG_VERSION =	0.7.4
DISTNAME =	Genshi-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www

HOMEPAGE =	https://genshi.edgewall.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

# at the time of writing, speedups only work with py2, but they don't
# break the build with 3.x; keep them enabled here so that we can spot if
# they start getting built in an update
MODPY_SETUP_ARGS =	--with-speedups

FLAVOR ?=
FLAVORS =	python3

TEST_DEPENDS =	${BUILD_DEPENDS}

# the inverse of MODPY_COMMENT; used for _speedups.so which is only built
# with py2.
SUBST_VARS +=	MODPY_2ONLY
.if ${FLAVOR:Mpython3}
MODPY_2ONLY = "@comment "
.else
MODPY_2ONLY =
WANTLIB += ${MODPY_WANTLIB} pthread
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}genshi
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}genshi
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}genshi
	cd ${WRKSRC}/examples && \
	    pax -rw * ${PREFIX}/share/examples/${MODPY_PY_PREFIX}genshi

.include <bsd.port.mk>
