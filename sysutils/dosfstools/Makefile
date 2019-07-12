# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:41 sthen Exp $

COMMENT=	check and label FAT file systems

V=		4.1
DISTNAME=	dosfstools-${V}
EXTRACT_SUFX=	.tar.xz
REVISION=	0

CATEGORIES=	sysutils
HOMEPAGE=	https://github.com/dosfstools/dosfstools

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/dosfstools/dosfstools/releases/download/v${V}/

WANTLIB+=	c iconv

LIB_DEPENDS=	converters/libiconv
TEST_DEPENDS=	editors/vim,-main \
		textproc/gdiff

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

.include <bsd.port.mk>
