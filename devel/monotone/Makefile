# $OpenBSD: Makefile,v 1.15 2017/11/21 00:13:00 naddy Exp $

COMMENT=	distributed version control system

VERSION=	1.1
DISTNAME=	monotone-${VERSION}
CATEGORIES=	devel
REVISION=	2

HOMEPAGE=	http://monotone.ca/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += botan-1.10 c iconv idn intl m pcre pthread sqlite3 z
WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB}

MASTER_SITES=	${HOMEPAGE}/downloads/${VERSION}/
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/lua
BUILD_DEPENDS=	devel/boost \
		devel/gettext-tools
LIB_DEPENDS=	databases/sqlite3 \
		devel/libidn \
		devel/pcre \
		security/botan

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
TEST_FLAGS=	HOME=${WRKSRC}
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/monotone/

.include <bsd.port.mk>
