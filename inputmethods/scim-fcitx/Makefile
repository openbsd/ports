# $OpenBSD: Makefile,v 1.14 2017/11/21 00:13:01 naddy Exp $

COMMENT=	scim input method module for fcitx

V=		3.1.1
DISTNAME=	scim-fcitx.$V
PKGNAME=	scim-fcitx-$V
REVISION=	5

CATEGORIES=	inputmethods chinese

HOMEPAGE=	https://github.com/scim-im/scim-fcitx

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c iconv intl m ${COMPILER_LIBCXX} scim-1.0 pthread

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
