# $OpenBSD: Makefile,v 1.5 2014/09/16 10:44:17 sthen Exp $

COMMENT=	tiny cgi web script handler using shell or Lua

DISTNAME=	haserl-0.9.33

CATEGORIES=	www

HOMEPAGE=	http://haserl.sourceforge.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES= ${MASTER_SITE_SOURCEFORGE:=haserl/}

FLAVORS=	no_lua static
FLAVOR?=

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-bash-extensions
CONFIGURE_ENV+=	LDFLAGS="${LDFLAGS}"
LDFLAGS=	-L${LOCALBASE}/lib

.if !${FLAVOR:Mno_lua}
MODULES+=	lang/lua
CONFIGURE_ARGS+= --with-lua=lua${MODLUA_DEP_VERSION} # pkg-config name
WANTLIB+=	${MODLUA_WANTLIB} m
LIB_DEPENDS=	${MODLUA_LIB_DEPENDS}
.endif

.if ${FLAVOR:Mstatic}
LDFLAGS+=	-static
.endif

.include <bsd.port.mk>
