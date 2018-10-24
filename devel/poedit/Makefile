# $OpenBSD: Makefile,v 1.28 2018/10/24 14:28:00 sthen Exp $

COMMENT=	cross-platform gettext catalogs (PO-files) editor

DISTNAME=	poedit-1.3.7
REVISION=	12
CATEGORIES=	devel

HOMEPAGE=	http://www.poedit.net/

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=poedit/}

# GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	c m pthread ${COMPILER_LIBCXX} wx_base_xml wx_gtk2_html wx_gtk2_adv \
		wx_gtk2_xrc wx_base wx_gtk2_core

COMPILER =		base-clang ports-gcc base-gcc

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS=	x11/wxWidgets>=2.6.3

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	--disable-spellchecking

LIB_DEPENDS +=	databases/db/v4
WANTLIB +=	db>=4

CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib/db4" \
		CPPFLAGS="-I${LOCALBASE}/include/db4"

.include <bsd.port.mk>
