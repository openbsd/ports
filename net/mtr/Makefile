# $OpenBSD: Makefile,v 1.73 2021/09/02 17:06:14 fcambus Exp $

COMMENT=	network diagnostic tool, similar to ping and traceroute

GH_ACCOUNT=	traviscross
GH_PROJECT=	mtr
GH_TAGNAME=	v0.94
EPOCH=		0

CATEGORIES=	net

HOMEPAGE=	https://www.bitwizard.nl/mtr/

# GPLv2+
PERMIT_PACKAGE=	yes

# diff for pledge(), not yet enabled
WANTLIB += c m curses jansson

FLAVORS=	gtk
FLAVOR?=

BUILD_DEPENDS=	shells/bash-completion

LIB_DEPENDS=	devel/jansson

CONFIGURE_STYLE= autoreconf
AUTORECONF=	${WRKSRC}/bootstrap.sh
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15

CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	lang/python # for tests only
MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No
TEST_DEPENDS=	${MODPY_RUN_DEPENDS}

.if ${FLAVOR} == "gtk"
CONFIGURE_ARGS+=	--with-gtk-prefix=${LOCALBASE}
LIB_DEPENDS+=		x11/gtk+3
WANTLIB += atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB += pangocairo-1.0 pthread
.else
CONFIGURE_ARGS+=	--without-glib \
			--without-gtk
.endif

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

post-extract:
	printf '#!/bin/sh\necho -n ${GH_TAGNAME:S/v//}\n' > ${WRKSRC}/build-aux/git-version-gen

.include <bsd.port.mk>
