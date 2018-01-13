# $OpenBSD: Makefile,v 1.14 2018/01/13 03:00:46 bentley Exp $

COMMENT=		info viewer with lynx-style navigation

DISTNAME=		pinfo-0.6.9
REVISION=		0
CATEGORIES=		textproc devel

HOMEPAGE=		https://alioth.debian.org/frs/?group_id=30592

MAINTAINER=		Marc Espie <espie@openbsd.org>

MASTER_SITES=		https://alioth.debian.org/frs/download.php/latestfile/434/ \
			${_MASTER_SITE_FREEBSD}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c curses iconv intl readline 

LIB_DEPENDS=		devel/gettext

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf

MAKE_FLAGS+=	INTLLIBS='-L${LOCALBASE}/lib -lintl -liconv'

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pinfo
		${INSTALL_DATA} ${WRKSRC}/src/pinforc \
			${PREFIX}/share/examples/pinfo/

.include <bsd.port.mk>
