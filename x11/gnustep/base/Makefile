# $OpenBSD: Makefile,v 1.31 2010/10/19 08:13:57 espie Exp $

COMMENT=	GNUstep base library

REVISION=	0
DISTNAME=	gnustep-base-1.20.1

SHARED_LIBS=	gnustep-base 3.1	# .1.20
CATEGORIES=	devel

LIBDIR=		lib/GNUstep/Libraries/gnustep-base/Versions/${LIBgnustep-base_VERSION}
SUBST_VARS=	LIBDIR

HOMEPAGE=	http://www.gnustep.org/

WANTLIB += c crypto gcrypt m objc pthread ssl xml2 z ffi gmp xslt gnutls
WANTLIB += dns_sd

.if ${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "amd64"
WANTLIB += iberty
.endif

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

MODULES=	x11/gnustep \
		converters/libiconv
LIB_DEPENDS=	::devel/libffi \
		::devel/gmp \
		::textproc/libxslt \
		::security/gnutls \
		::net/avahi

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/avahi-compat-libdns_sd" \
		LDFLAGS="-pthread"
CONFIGURE_ARGS=	--disable-procfs \
		--disable-procfs-psinfo
USE_GROFF =	Yes

CFLAGS+=	-pthread

pre-configure:
	@perl -pi -e 's,^MAJOR_VERSION=.*,MAJOR_VERSION=${LIBgnustep-base_VERSION:R},g;' \
		-e 's,^MINOR_VERSION=.*,MINOR_VERSION=${LIBgnustep-base_VERSION:E},g' \
		${WRKSRC}/Version

post-install:
	rm ${PREFIX}/${LIBDIR}/Resources/NSTimeZones/.abbreviations.plist.swp

.include <bsd.port.mk>
