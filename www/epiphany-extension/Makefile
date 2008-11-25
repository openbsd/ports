# $OpenBSD: Makefile,v 1.1.1.1 2008/11/25 13:23:13 jasper Exp $

COMMENT=		collection of extensions for Epiphany

GNOME_PROJECT=		epiphany-extensions
GNOME_VERSION=		2.24.1

CATEGORIES=		www

HOMEPAGE=		http://projects.gnome.org/epiphany/extensions

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python \
			x11/gnome

WANTLIB=	nspr4 pcre plc4 plds4

BUILD_DEPENDS=	:gettext-*:devel/gettext \
		:xulrunner-devel->=1.8.1:devel/xulrunner,-devel \
		:scrollkeeper-*:textproc/scrollkeeper \
		:epiphany->=2.24.2:www/epiphany \
		:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils
RUN_DEPENDS=	:gettext-*:devel/gettext \
		:scrollkeeper-*:textproc/scrollkeeper \
		:epiphany->=2.24.2:www/epiphany
LIB_DEPENDS=	xulrunner/gtkembedmoz,xulrunner/mozjs,xulrunner/xpcom:xulrunner->=1.8.1:devel/xulrunner

USE_X11=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes

FAKE_FLAGS+=	PYTHON="${MODPY_BIN}"

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/epiphany \
		--with-engine=mozilla \
		--with-gecko=xulrunner \
		--enable-python \
		--disable-schemas-install \
		--disable-scrollkeeper \
		--disable-gtk-doc \
		--enable-opensp=no

M=		${GNOME_VERSION:R}
SUBST_VARS=	M

.include <bsd.port.mk>
