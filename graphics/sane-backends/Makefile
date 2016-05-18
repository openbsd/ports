# $OpenBSD: Makefile,v 1.76 2016/05/18 20:02:27 sthen Exp $

BROKEN-alpha=		ICE hp5590.c:1141: error: unrecognizable insn

COMMENT=		API for accessing scanners, backends

DISTNAME=		sane-backends-1.0.25
REVISION=		4

SHARED_LIBS +=  sane                 2.0      # unknown

CATEGORIES=		graphics

HOMEPAGE=		http://www.sane-project.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c jpeg m png pthread tiff usb usb-1.0 v4l1 v4l2 v4lconvert
WANTLIB += z

MASTER_SITES=		http://fossies.org/linux/misc/ \
			https://alioth.debian.org/frs/download.php/file/4146/

BUILD_DEPENDS=		devel/gettext-tools

LIB_DEPENDS=		devel/libusb-compat \
			graphics/png \
			graphics/tiff \
			multimedia/libv4l

FLAVORS=		snmp
FLAVOR?=

USE_GMAKE=		Yes

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/spool

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--sbindir=${PREFIX}/libexec \
			--with-docdir=${PREFIX}/share/doc/sane-backends \
			--without-gphoto2 \
			--with-group=553 \
			--enable-pthread \
			--disable-latex

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

FAKE_FLAGS=		configdir=${PREFIX}/share/examples/sane-backends/sane.d

post-install:
	# removing the microtek2 backend which needs a Linux kernel module
	find ${PREFIX} -name \*microtek2\* | xargs rm
	cp -R ${WRKSRC}/tools/openbsd/ \
		${PREFIX}/share/examples/sane-backends/hotplug
	rm ${PREFIX}/share/doc/sane-backends/README*
	rm ${PREFIX}/share/examples/sane-backends/hotplug/{attach,detach}.orig
	rm ${PREFIX}/lib/sane/*.{a,la}

.include <bsd.port.mk>
