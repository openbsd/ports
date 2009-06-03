# $OpenBSD: Makefile,v 1.22 2009/06/03 16:36:09 ajacoutot Exp $

COMMENT=	GNUstep base library

DISTNAME=	gnustep-base-1.18.0
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	gnustep-base 2.1	# .1.16.4
CATEGORIES=	devel

LIBDIR=		lib/GNUstep/Libraries/gnustep-base/Versions/${LIBgnustep-base_VERSION}
SUBST_VARS=	LIBDIR

HOMEPAGE=	http://www.gnustep.org/

WANTLIB += c crypto gcrypt gpg-error iberty m objc pthread ssl
WANTLIB += xml2 z

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

MODULES=	x11/gnustep \
		devel/gettext
LIB_DEPENDS=	avcall.>=1,callback.>=1::devel/ffcall \
		gmp.>=7::devel/gmp \
		xslt.>=3::textproc/libxslt \
		gnutls.>=13::security/gnutls \
		dns_sd::net/avahi

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/avahi-compat-libdns_sd" \
		LDFLAGS="-pthread"
CONFIGURE_ARGS=	--disable-procfs \
		--disable-procfs-psinfo

CFLAGS+=	-pthread

pre-configure:
	@perl -pi -e 's,^MAJOR_VERSION=.*,MAJOR_VERSION=${LIBgnustep-base_VERSION:R},g;' \
		-e 's,^MINOR_VERSION=.*,MINOR_VERSION=${LIBgnustep-base_VERSION:E},g' \
		${WRKSRC}/Version

post-install:
	@rm ${PREFIX}/lib/GNUstep/Libraries/gnustep-base/Versions/${LIBgnustep-base_VERSION}/Resources/NSTimeZones/.README.swp

.include <bsd.port.mk>
