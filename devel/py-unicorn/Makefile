# $OpenBSD: Makefile,v 1.9 2020/06/13 09:26:31 jasper Exp $

BROKEN-sparc64 = multiple definition of use_vis3_instructions

COMMENT =	Unicorn CPU emulator engine

MODPY_EGG_VERSION =	1.0.1
DISTNAME =	unicorn-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	3

CATEGORIES =	devel

HOMEPAGE =	https://www.unicorn-engine.org

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += m

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=		python3

# see patches/patch-src_Makefile
BUILD_DEPENDS =		lang/python/${MODPY_DEFAULT_VERSION_2}

USE_GMAKE =		Yes

MAKE_ENV +=		V=1

# our ld.bfd has no '-Bsymbolic-functions' option support
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mlld}
MAKE_ENV +=		LD_IS_LLD=1
.else
MAKE_ENV +=		LD_IS_LLD=0
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/Makefile

.include <bsd.port.mk>
