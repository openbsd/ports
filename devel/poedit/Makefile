# $OpenBSD: Makefile,v 1.31 2019/07/17 14:49:21 danj Exp $

COMMENT=	cross-platform gettext catalogs (PO-files) editor

DISTNAME=	poedit-1.3.7
REVISION=	14
CATEGORIES=	devel

HOMEPAGE=	http://www.poedit.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=poedit/}

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c m pthread ${COMPILER_LIBCXX}
WANTLIB += wx_baseu-3.0 wx_baseu_net-3.0 wx_baseu_xml-3.0 wx_gtk3u_adv-3.0
WANTLIB += wx_gtk3u_core-3.0 wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0
WANTLIB += wx_gtk3u_xrc-3.0

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
