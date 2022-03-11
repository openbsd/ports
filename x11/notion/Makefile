COMMENT=	light, keyboard friendly static tiling window manager

GH_ACCOUNT=	raboof
GH_PROJECT=	notion
GH_TAGNAME=	4.0.2

CATEGORIES=	x11

HOMEPAGE=	https://notionwm.net

MAINTAINER=	Stefan Hagen <sh+ports@codevoid.de>

# LGPL
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua

# works with lua 5.1-5.3
MODLUA_VERSION=	5.3

WANTLIB += ICE SM X11 Xext Xft Xinerama Xrandr c intl
WANTLIB += m readline ${MODLUA_WANTLIB}

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	${MODLUA_LIB_DEPENDS} \
		devel/gettext,-runtime

USE_GMAKE=	Yes

MAKE_FLAGS=	ETCDIR=$(SYSCONFDIR)/notion \
		LOCALBASE=${LOCALBASE} \
		NOTION_RELEASE=${GH_TAGNAME}
FAKE_FLAGS=	ETCDIR=$(PREFIX)/share/examples/notion \
		MANDIR=$(PREFIX)/man \
		PREFIX=${TRUEPREFIX}

CFLAGS+=	-I${LOCALBASE}/include -I${MODLUA_INCL_DIR}
LDFLAGS+=	-L${LOCALBASE}/lib -L$(MODLUA_LIBDIR) -lintl -l$(MODLUA_LIB)

NOTION_DIR=	${SYSCONFDIR}/notion
SUBST_VARS+=	NOTION_DIR

# XXX should set LUA_VERSION in MAKE_FLAGS instead, but that doesn't work
# with our non-standard lua binary/pkg-config naming scheme

pre-configure:
	sed -e 's/5\.3\ 5\.2 5\.1/$(MODLUA_DEP_VERSION)/g' -i \
		$(WRKSRC)/build/lua-detect.mk

.include <bsd.port.mk>
