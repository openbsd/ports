# $OpenBSD: Makefile,v 1.54 2014/05/22 09:48:56 sebastia Exp $

COMMENT=	GNUstep base library

DISTNAME=	gnustep-base-1.24.6
REVISION =	1

SHARED_LIBS=	gnustep-base 8.1
CATEGORIES=	devel

LIBDIR=		lib/GNUstep/Libraries/gnustep-base/Versions/${LIBgnustep-base_VERSION}
SUBST_VARS=	LIBDIR

HOMEPAGE=	http://www.gnustep.org/

WANTLIB += c gcrypt m objc2 pthread xml2 z ffi gmp xslt gnutls
WANTLIB += avahi-client avahi-common icudata icui18n icuuc

.if ${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "amd64"
WANTLIB += iberty
.endif

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

MODULES =	x11/gnustep
MODGNUSTEP_NEEDS_GUI=	No
MODGNUSTEP_NEEDS_BASE=	No

LIB_DEPENDS +=	devel/libffi \
		devel/gmp \
		textproc/libxslt \
		security/gnutls \
		textproc/icu4c \
		net/avahi \
		x11/gnustep/libobjc2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_header_execinfo_h=false
CONFIGURE_ARGS +=	--disable-procfs \
			--disable-procfs-psinfo
MAKE_FLAGS +=		libgnustep-base_INTERFACE_VERSION=${LIBgnustep-base_VERSION}

.include <bsd.port.mk>
