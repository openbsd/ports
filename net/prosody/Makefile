# $OpenBSD: Makefile,v 1.7 2010/07/26 18:11:42 jolan Exp $

SHARED_ONLY=	Yes

COMMENT=	communications server for Jabber/XMPP written in Lua
DISTNAME=	prosody-0.7.0
REVISION=	1
CATEGORIES=	net
MASTER_SITES=	http://prosody.im/downloads/source/

HOMEPAGE=	http://prosody.im/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=	Yes
MODULES=	lang/lua
LIB_DEPENDS=	idn::devel/libidn \
		lua::lang/lua
RUN_DEPENDS+=	::archivers/luazlib \
		::devel/luaevent \
		::devel/luafs \
		::security/luasec \
		::textproc/luaexpat
WANTLIB+=	crypto

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--prefix="${PREFIX}" \
		--sysconfdir="${SYSCONFDIR}/prosody" \
		--datadir="/var/prosody" \
		--with-lua="${LOCALBASE}" \
		--c-compiler="${CC}" \
		--linker="${CC}" \
		--cflags="${CFLAGS} -fPIC"

FAKE_FLAGS+=	CONFIG=${DESTDIR}${PREFIX}/share/examples/prosody

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prosody
	@sed -e s#_SYSCONFDIR_#${SYSCONFDIR}#g ${FILESDIR}/README.OpenBSD > \
		${WRKBUILD}/README.OpenBSD
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD ${WRKSRC}/README \
		${PREFIX}/share/doc/prosody
	touch ${PREFIX}/share/examples/prosody/prosody.log

.include <bsd.port.mk>
