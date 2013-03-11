# $OpenBSD: Makefile,v 1.27 2013/03/11 11:35:55 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	communications server for Jabber/XMPP written in Lua
DISTNAME=	prosody-0.8.2
CATEGORIES=	net
MASTER_SITES=	http://prosody.im/downloads/source/
REVISION=	9

HOMEPAGE=	http://prosody.im/

MAINTAINER=	Wiktor Izdebski <vicviq@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes
MODULES=	lang/lua
LIB_DEPENDS=	devel/libidn
MODLUA_RUN_DEPENDS+= archivers/luazlib \
		databases/luadbi \
		devel/luaevent \
		devel/luafs \
		security/luasec \
		textproc/luaexpat
WANTLIB+=	crypto idn

SUBST_VARS+=	FLAVOR MAKE_PROGRAM

NO_TEST=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--prefix="${PREFIX}" \
		--sysconfdir="${SYSCONFDIR}/prosody" \
		--datadir="/var/prosody" \
		--with-lua="${LOCALBASE}" \
		--with-lua-include="${MODLUA_INCL_DIR}" \
		--c-compiler="${CC}" \
		--linker="${CC}" \
		--ldflags="-I/usr/include -I${LOCALBASE}/include -L/usr/lib -L${LOCALBASE}/lib -shared" \
		--cflags="${CFLAGS} -I${LOCALBASE}/include -fPIC"

FAKE_FLAGS+=	CONFIG=${DESTDIR}${PREFIX}/share/examples/prosody

pre-configure:
	${SUBST_CMD} ${WRKSRC}/prosody ${WRKSRC}/prosodyctl \
		${WRKSRC}/certs/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prosody
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/prosody
	touch ${PREFIX}/share/examples/prosody/prosody.log

.include <bsd.port.mk>
