# $OpenBSD: Makefile,v 1.25 2019/03/17 23:59:28 sthen Exp $

COMMENT=		Advanced Intrusion Detection Environment

V=			0.16.1
DISTNAME=		aide-${V}
CATEGORIES=		security

HOMEPAGE=		https://github.com/aide/aide

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://github.com/aide/aide/releases/download/v${V}/

BUILD_DEPENDS=		devel/bison \
			devel/pcre \
			security/mhash

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-mhash
CONFIGURE_ENV+=		YACC="bison -y" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/aide
	${INSTALL_DATA} ${WRKSRC}/doc/aide.conf ${PREFIX}/share/examples/aide

.include <bsd.port.mk>
