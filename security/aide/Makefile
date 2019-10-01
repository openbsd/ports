# $OpenBSD: Makefile,v 1.28 2019/10/01 11:38:15 sthen Exp $

COMMENT=		Advanced Intrusion Detection Environment

V=			0.16.2
DISTNAME=		aide-${V}
CATEGORIES=		security

HOMEPAGE=		https://github.com/aide/aide

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c m mhash pcre z

MASTER_SITES=		https://github.com/aide/aide/releases/download/v${V}/

BUILD_DEPENDS=		devel/bison
LIB_DEPENDS=		devel/pcre \
			security/mhash

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-static \
			--with-mhash
CONFIGURE_ENV+=		YACC="bison -y" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/aide
	${INSTALL_DATA} ${WRKSRC}/doc/aide.conf ${PREFIX}/share/examples/aide

.include <bsd.port.mk>
