# $OpenBSD: Makefile,v 1.47 2013/04/14 23:22:06 sthen Exp $

COMMENT=	GNUstep base library

DISTNAME=	gnustep-base-1.24.0
REVISION=	3

SHARED_LIBS=	gnustep-base 6.0
CATEGORIES=	devel

LIBDIR=		lib/GNUstep/Libraries/gnustep-base/Versions/${LIBgnustep-base_VERSION}
SUBST_VARS=	LIBDIR

HOMEPAGE=	http://www.gnustep.org/

WANTLIB += c crypto gcrypt m objc2 pthread ssl xml2 z ffi gmp xslt gnutls
WANTLIB += avahi-client avahi-common icudata icui18n icuuc

.if ${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "amd64"
WANTLIB += iberty
.endif

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

MODULES=	x11/gnustep \
		converters/libiconv
MODGNUSTEP_NEEDS_GUI=	No
MODGNUSTEP_NEEDS_BASE=	No

AUTOCONF_VERSION= 2.67

BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS}
LIB_DEPENDS +=	devel/libffi \
		devel/gmp \
		textproc/libxslt \
		security/gnutls \
		textproc/icu4c \
		net/avahi \
		x11/gnustep/libobjc2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS +=	--disable-procfs \
			--disable-procfs-psinfo
MAKE_FLAGS +=		libgnustep-base_INTERFACE_VERSION=${LIBgnustep-base_VERSION}

post-patch:
	@cd ${WRKSRC}/SSL && env AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf

.include <bsd.port.mk>
