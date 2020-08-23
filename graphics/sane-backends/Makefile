# $OpenBSD: Makefile,v 1.93 2020/08/23 15:52:11 ajacoutot Exp $

BROKEN-alpha=		ICE hp5590.c:1141: error: unrecognizable insn

COMMENT=		API for accessing scanners, backends

DISTNAME=		sane-backends-1.0.31

SHARED_LIBS +=  sane                 2.1      # unknown

CATEGORIES=		graphics

HOMEPAGE=		http://www.sane-project.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} c execinfo iconv jpeg lzma m png
WANTLIB += tiff usb-1.0 v4l1 v4l2 v4lconvert xml2 z zstd

MASTER_SITES=		https://gitlab.com/sane-project/backends/uploads/8bf1cae2e1803aefab9e5331550e5d5d/

COMPILER=		base-clang ports-gcc

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		devel/libusb1 \
			graphics/png \
			graphics/tiff \
			multimedia/libv4l \
			textproc/libxml

FLAVORS=		snmp
FLAVOR?=

USE_GMAKE=		Yes

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/spool

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_LATEX= \
			ac_cv_path_PDFLATEX=

CONFIGURE_ARGS=		--sbindir=${PREFIX}/libexec \
			--docdir=${PREFIX}/share/doc/sane-backends \
			--without-gphoto2 \
			--with-group=553 \
			--enable-pthread

# XXX doesn't work
CONFIGURE_ARGS +=	--without-avahi

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

post-install:
	# removing the microtek2 backend which needs a Linux kernel module
	find ${PREFIX} -name \*microtek2\* -delete
	cp -R ${WRKSRC}/tools/openbsd/ \
		${PREFIX}/share/examples/sane-backends/hotplug
	rm ${PREFIX}/share/doc/sane-backends/README*
	rm ${PREFIX}/lib/sane/*.{a,la}

.include <bsd.port.mk>
