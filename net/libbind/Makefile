# $OpenBSD: Makefile,v 1.6 2006/01/03 17:16:18 steven Exp $

COMMENT=	"BIND 8 compatible stub resolver library"

VERSION=	9.2.3
DISTNAME=	bind-${VERSION}
PKGNAME=	libbind-${VERSION}p1
SHARED_LIBS=	bind	2.0
CATEGORIES=	net

MASTER_SITES+=	ftp://ftp.isc.org/isc/bind9/${VERSION}/ \
		ftp://ftp.epix.net/pub/isc/bind9/${VERSION}/ \
		ftp://ftp.nominum.com/pub/isc/bind9/${VERSION}/ \
		ftp://ftp.sunet.se/pub/network/isc/bind9/${VERSION}/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.isc.org/isc/bind9/${VERSION}/ \
		ftp://ftp.iij.ad.jp/pub/network/isc/bind9/${VERSION}/ \

HOMEPAGE=	http://www.isc.org/products/BIND/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKSRC=			${WRKDIST}/lib/bind

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libtool \
			${CONFIGURE_SHARED} \
			--with-randomdev=/dev/arandom
USE_LIBTOOL=		Yes

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}

FLAVORS=		threads
FLAVOR?=

.if ${FLAVOR:L:Mthreads}
CONFIGURE_ARGS+=	--enable-threads
.else
CONFIGURE_ARGS+=	--disable-threads
.endif

.include <bsd.port.mk>
