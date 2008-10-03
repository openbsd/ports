# $OpenBSD: Makefile,v 1.16 2008/10/03 07:21:56 ajacoutot Exp $

COMMENT=	GNUstep base library

DISTNAME=	gnustep-base-1.16.1
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	gnustep-base 2.0	# .1.16.1
CATEGORIES=	devel

LIBDIR=		lib/GNUstep/Libraries/gnustep-base/Versions/${LIBgnustep-base_VERSION}
SUBST_VARS=	LIBDIR

HOMEPAGE=	http://www.gnustep.org/

WANTLIB=	c crypto gcrypt gpg-error m objc pthread ssl xml2 z

.if ${MACHINE_ARCH} != "amd64"
WANTLIB+=	iberty
.endif

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

MODULES=	x11/gnustep \
		devel/gettext
LIB_DEPENDS=	avcall.>=1,callback.>=1::devel/ffcall \
		gmp.>=7::devel/gmp \
		xslt.>=3::textproc/libxslt \
		gnutls.>=13::security/gnutls

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-procfs \
		--disable-procfs-psinfo

pre-configure:
	@perl -pi -e 's,^MAJOR_VERSION=.*,MAJOR_VERSION=${LIBgnustep-base_VERSION:R},g;' \
		-e 's,^MINOR_VERSION=.*,MINOR_VERSION=${LIBgnustep-base_VERSION:E},g' \
		${WRKSRC}/Version

post-install:
	@rm ${PREFIX}/lib/GNUstep/Libraries/gnustep-base/Versions/${LIBgnustep-base_VERSION}/Resources/NSTimeZones/.README.swp

.include <bsd.port.mk>
