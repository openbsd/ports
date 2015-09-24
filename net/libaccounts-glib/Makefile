# $OpenBSD: Makefile,v 1.7 2015/09/24 04:36:41 ajacoutot Exp $

COMMENT=		accounts management library for GLib applications

DISTNAME=		libaccounts-glib-1.18

SHARED_LIBS +=  accounts-glib        1.0      # 1.3

CATEGORIES=		net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		https://gitlab.com/groups/accounts-sso

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 lzma m pcre
WANTLIB += pthread sqlite3 xml2 z

# from https://gitlab.com/accounts-sso/libaccounts-glib/tags
MASTER_SITES=		https://distfiles.bsdfrog.org/
WRKDIST=		${WRKDIR}/${DISTNAME}-17201ad512e86d248ac158046ac322e7164adc87

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/py-gobject3
RUN_DEPENDS=		devel/py-gobject3
LIB_DEPENDS=		textproc/libxml

MODGNOME_TOOLS=		docbook gobject-introspection

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-gcov \
			--disable-tests

# XXX check if still needed at next update
CONFIGURE_ENV +=	HAVE_GCOV_FALSE='\#'

AUTOCONF_VERSION=		2.69
AUTOMAKE_VERSION=		1.15
CONFIGURE_ARGS +=		--enable-gtk-doc
BUILD_DEPENDS +=		${MODGNU_AUTOCONF_DEPENDS} \
				${MODGNU_AUTOMAKE_DEPENDS} \
				devel/libtool \
				textproc/gtk-doc

pre-configure:
# XXX check if still needed at next update
	sed -i "s,-Werror,," ${WRKSRC}/libaccounts-glib/Makefile.am
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		NOCONFIGURE=1 \
		./autogen.sh

.include <bsd.port.mk>
