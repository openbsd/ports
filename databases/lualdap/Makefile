# $OpenBSD: Makefile,v 1.3 2019/07/12 20:43:53 sthen Exp $

COMMENT =	interface LDAP from lua
DISTNAME=	lualdap-1.1.0
CATEGORIES =	databases

MASTER_SITES =	http://files.luaforge.net/releases/lualdap/lualdap/LuaLDAP1.1.0/
HOMEPAGE =	http://www.keplerproject.org/lualdap/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua

MODLUA_VERSION =	5.1
USE_GMAKE =	Yes
NO_TEST =	Yes
CFLAGS +=	-DLDAP_DEPRECATED
ALL_TARGET =

LIB_DEPENDS =	databases/openldap
WANTLIB =	ldap

do-configure:
	${SUBST_CMD} ${WRKSRC}/config

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/src/lualdap.so ${MODLUA_LIBDIR}

.include <bsd.port.mk>
