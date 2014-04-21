# $OpenBSD: Makefile,v 1.63 2014/04/21 12:24:07 ajacoutot Exp $

BROKEN-alpha =	ICE hp5590.c:1141: error: unrecognizable insn

COMMENT=	API for accessing scanners, backends

DISTNAME=	sane-backends-1.0.24
REVISION=	0

SHARED_LIBS +=  sane                 2.0      # unknown

CATEGORIES=	graphics

HOMEPAGE=	http://www.sane-project.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += avahi-client avahi-common c crypto cups dbus-1 jpeg
WANTLIB += m pthread ssl tiff usb usb-1.0 z

MASTER_SITES=	https://distfiles.bsdfrog.org/ \
		ftp://ftp2.sane-project.org/pub/sane/${DISTNAME}/

MODULES=	devel/gettext

LIB_DEPENDS=	graphics/tiff \
		devel/libusb-compat \
		print/cups,-libs

FLAVORS=	snmp
FLAVOR?=

USE_GMAKE=	Yes

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/spool

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--sbindir=${PREFIX}/libexec \
		--with-docdir=${PREFIX}/share/doc/sane-backends \
		--without-gphoto2 \
		--with-group=553 \
		--disable-latex

# XXX doesn't work
#CONFIGURE_ARGS+=--enable-avahi

.if ${FLAVOR:Msnmp}
LIB_DEPENDS +=	net/net-snmp
WANTLIB +=	crypto netsnmp
CONFIGURE_ARGS += --with-snmp
.else
CONFIGURE_ARGS += --without-snmp
.endif

# missing check in configure for config.h.in
CFLAGS +=	-DHAVE_SYS_SOCKET_H

FAKE_FLAGS=	configdir=${PREFIX}/share/examples/sane-backends/sane.d

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

post-install:
	# removing the microtek2 backend which needs a Linux kernel module
	find ${PREFIX} -name \*microtek2\* | xargs rm
	cp -R ${WRKSRC}/tools/openbsd/ \
		${PREFIX}/share/examples/sane-backends/hotplug
	rm ${PREFIX}/share/doc/sane-backends/README*
	rm ${PREFIX}/share/examples/sane-backends/hotplug/{attach,detach}.orig

.include <bsd.port.mk>
