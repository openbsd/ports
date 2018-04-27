# $OpenBSD: Makefile,v 1.1.1.1 2018/04/27 18:36:31 abieber Exp $

COMMENT =	lua bindings for OpenBSD functions

V =		v0.2
DISTNAME =	lua-openbsd-${V}
PKGNAME =	${DISTNAME:S/v//}

CATEGORIES =	devel

MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

#MIT
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =	lua52 lua53
FLAVOR ?=

# uses pledge()
WANTLIB =		${MODLUA_WANTLIB} m

MASTER_SITES =		https://github.com/n0la/lua-openbsd/releases/download/${V}/

WRKSRC =		${WRKDIR}/lua-openbsd

MODULES =		devel/cmake \
			lang/lua

CONFIGURE_ARGS +=	-DMODLUA_VERSION=${MODLUA_VERSION}

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/example/*.lua ${MODLUA_EXAMPLEDIR}

.include <bsd.port.mk>
