# $OpenBSD: Makefile,v 1.91 2020/05/17 15:30:11 ajacoutot Exp $

BROKEN-alpha=		ICE hp5590.c:1141: error: unrecognizable insn

COMMENT=		API for accessing scanners, backends

DISTNAME=		sane-backends-1.0.30

SHARED_LIBS +=  sane                 2.1      # unknown

CATEGORIES=		graphics

HOMEPAGE=		http://www.sane-project.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} c execinfo iconv jpeg lzma m png
WANTLIB += tiff usb-1.0 v4l1 v4l2 v4lconvert xml2 z zstd

MASTER_SITES=		https://gitlab.com/sane-project/backends/uploads/c3dd60c9e054b5dee1e7b01a7edc98b0/

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
			--without-api-spec \
			--without-gphoto2 \
			--with-group=553 \
			--enable-pthread

# XXX doesn't work
#CONFIGURE_ARGS +=	--enable-avahi

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
	rm ${PREFIX}/share/examples/sane-backends/hotplug/{attach,detach}.orig
	rm ${PREFIX}/lib/sane/*.{a,la}

.include <bsd.port.mk>
