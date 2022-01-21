# $OpenBSD: Makefile,v 1.104 2022/01/21 07:09:33 ajacoutot Exp $

BROKEN-alpha=		ICE hp5590.c:1141: error: unrecognizable insn

COMMENT=		API for accessing scanners, backends

V=			1.1.1
DISTNAME=		backends-${V}
PKGNAME=		sane-${DISTNAME}

SHARED_LIBS +=  sane                 2.2      # unknown

CATEGORIES=		graphics

HOMEPAGE=		http://www.sane-project.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} c execinfo iconv jpeg lzma m png
WANTLIB += tiff usb-1.0 v4l1 v4l2 v4lconvert xml2 z zstd

MASTER_SITES=		https://gitlab.com/sane-project/backends/-/archive/${V}/

COMPILER=		base-clang ports-gcc

MODULES=		lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		devel/libusb1 \
			graphics/png \
			graphics/tiff \
			multimedia/libv4l \
			textproc/libxml

FLAVORS=		escl snmp
FLAVOR?=

USE_GMAKE=		Yes

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/spool

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
# ./configure[18935]: syntax error: `noext,' unexpected
BUILD_DEPENDS +=	devel/autoconf-archive

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_LATEX= \
			ac_cv_path_PDFLATEX=

CONFIGURE_ARGS=		--sbindir=${PREFIX}/libexec \
			--docdir=${PREFIX}/share/doc/sane-backends \
			--with-lockdir=/var/spool/lock/sane \
			--without-gphoto2 \
			--with-group=553 \
			--enable-pthread

.if ${FLAVOR:Mescl}
LIB_DEPENDS +=		net/avahi,-libs \
			net/curl \
			print/poppler
RUN_DEPENDS +=		net/avahi
WANTLIB += X11 Xext Xrender avahi-client avahi-common cairo crypto
WANTLIB += curl dbus-1 expat ffi fontconfig freetype gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 intl lcms2 nghttp2 openjp2
WANTLIB += pcre pixman-1 poppler poppler-glib ssl xcb xcb-render
WANTLIB += xcb-shm Xau Xdmcp
.else
CONFIGURE_ARGS +=	--without-avahi
.endif

.if ${FLAVOR:Msnmp}
LIB_DEPENDS +=		net/net-snmp
WANTLIB += crypto netsnmp
CONFIGURE_ARGS +=	--with-snmp
.else
CONFIGURE_ARGS +=	--without-snmp
.endif

# missing check in configure for config.h.in
CFLAGS +=		-DHAVE_SYS_SOCKET_H

DEBUG_PACKAGES=		${BUILD_PACKAGES}

FAKE_FLAGS=		configdir=${PREFIX}/share/examples/sane-backends/sane.d

# https://gitlab.com/sane-project/backends/-/issues/440
post-extract:
	echo ${V} >${WRKSRC}/.tarball-version
	echo ${V} >${WRKSRC}/.version

post-install:
	# removing the microtek2 backend which needs a Linux kernel module
	find ${PREFIX} -name \*microtek2\* -delete
	cp -R ${WRKSRC}/tools/openbsd/ \
		${PREFIX}/share/examples/sane-backends/hotplug
	rm ${PREFIX}/share/doc/sane-backends/README*
	rm ${PREFIX}/lib/sane/*.{a,la}

.include <bsd.port.mk>
