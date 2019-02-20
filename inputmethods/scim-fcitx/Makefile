# $OpenBSD: Makefile,v 1.16 2019/02/20 06:16:07 kevlo Exp $

COMMENT=	scim input method module for fcitx

V=		3.1.1
DISTNAME=	scim-fcitx.$V
PKGNAME=	scim-fcitx-$V
REVISION=	7

CATEGORIES=	inputmethods chinese

HOMEPAGE=	https://github.com/scim-im/scim-fcitx

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c iconv intl m ${COMPILER_LIBCXX} scim-1.0 pthread

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scim/}
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	inputmethods/scim

WRKDIST=	${WRKDIR}/fcitx
LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
