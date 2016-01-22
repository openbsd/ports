# $OpenBSD: Makefile,v 1.21 2016/01/22 00:51:24 mmcc Exp $

COMMENT=		remote IMAP filtering utility

V=			2.6.5
DISTNAME=		imapfilter-${V}

GH_TAGNAME=		v${V}
GH_ACCOUNT=		lefcha
GH_PROJECT=		imapfilter

CATEGORIES=		mail

MAINTAINER=		Michael McConville <mmcco@mykolab.com>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m ssl pcre ${MODLUA_WANTLIB}

MODULES=		lang/lua
MODLUA_SA=		Yes

LIB_DEPENDS=		devel/pcre \
			${MODLUA_LIB_DEPENDS}

MAKE_FLAGS=		CC="${CC}" \
			PREFIX="${TRUEPREFIX}" \
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
