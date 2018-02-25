# $OpenBSD: Makefile,v 1.64 2018/02/25 22:59:45 awolk Exp $

COMMENT=	Matt's traceroute - network diagnostic tool#'

GH_ACCOUNT=	traviscross
GH_PROJECT=	mtr
GH_TAGNAME=	v0.92
REVISION=	1

CATEGORIES=	net

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	https://www.bitwizard.nl/mtr/

# GPLv2+
PERMIT_PACKAGE_CDROM=	yes

# diff for pledge(), not yet enabled
WANTLIB += c m ncurses

MASTER_SITES=	https://www.bitwizard.nl/mtr/files/ \
		ftp://ftp.bitwizard.nl/mtr/

FLAVORS=	gtk
FLAVOR?=

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.11
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

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

post-patch:
	printf '#!/bin/sh\necho -n ${GH_TAGNAME:S/v//}\n' \
	    > ${WRKSRC}/build-aux/git-version-gen
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./bootstrap.sh
	touch ${WRKSRC}/config.h.in

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
