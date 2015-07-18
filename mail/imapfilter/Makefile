# $OpenBSD: Makefile,v 1.17 2015/07/18 23:11:01 sthen Exp $

COMMENT=		remote IMAP filtering utility

V=			2.6.1
REVISION=		0
DISTNAME=		imapfilter-${V}

GH_TAGNAME=		v${V}
GH_ACCOUNT=		lefcha
GH_PROJECT=		imapfilter

CATEGORIES=		mail

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m ssl pcre ${MODLUA_WANTLIB}

MODULES=		lang/lua
MODLUA_SA=		Yes

LIB_DEPENDS=		devel/pcre \
			${MODLUA_LIB_DEPENDS}

MAKE_FLAGS=		CC="${CC}" \
			LIBLUA="${MODLUA_LIB}" \
			MYCFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${MODLUA_INCL_DIR}" \
			MYLDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

pre-configure:
	perl -pi -e 's,-ldl,,' ${WRKSRC}/src/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/imapfilter
	${INSTALL_DATA} ${WRKSRC}/samples/*.lua \
		${PREFIX}/share/examples/imapfilter/

.include <bsd.port.mk>
