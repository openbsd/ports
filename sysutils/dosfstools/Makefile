# $OpenBSD: Makefile,v 1.1.1.1 2017/08/21 14:43:23 jca Exp $

COMMENT=	check and label FAT file systems

V=		4.1
DISTNAME=	dosfstools-${V}
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	sysutils
HOMEPAGE=	https://github.com/dosfstools/dosfstools

MAINTAINER=	Donovan Watteau <tsoomi@gmail.com>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

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
