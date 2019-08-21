# $OpenBSD: Makefile,v 1.69 2019/08/21 15:23:42 sthen Exp $

COMMENT=	network diagnostic tool, similar to ping and traceroute

GH_ACCOUNT=	traviscross
GH_PROJECT=	mtr
GH_TAGNAME=	v0.93
EPOCH=		0

CATEGORIES=	net

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	https://www.bitwizard.nl/mtr/

# GPLv2+
PERMIT_PACKAGE=	yes

# diff for pledge(), not yet enabled
WANTLIB += c m curses

FLAVORS=	gtk
FLAVOR?=

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
LIB_DEPENDS+=		x11/gtk+2
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += intl pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z
.else
CONFIGURE_ARGS+=	--without-glib \
			--without-gtk
.endif

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

post-extract:
	printf '#!/bin/sh\necho -n ${GH_TAGNAME:S/v//}\n' > ${WRKSRC}/build-aux/git-version-gen

.include <bsd.port.mk>
