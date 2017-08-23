# $OpenBSD: Makefile,v 1.15 2017/08/23 07:07:03 ajacoutot Exp $

COMMENT=		utilities to manage well known user directories

DISTNAME=		xdg-user-dirs-0.16
CATEGORIES=		devel

HOMEPAGE=		http://freedesktop.org/wiki/Software/xdg-user-dirs/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://user-dirs.freedesktop.org/releases/

WANTLIB += c iconv intl

# man pages
BUILD_DEPENDS +=	textproc/docbook-xsl

LIB_DEPENDS=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/xdg-user-dirs

.include <bsd.port.mk>
