# $OpenBSD: Makefile,v 1.11 2011/04/14 13:47:59 sthen Exp $

COMMENT=	BIND 8 compatible stub resolver library

VERSION=	9.4.2
DISTNAME=	bind-${VERSION}
PKGNAME=	libbind-${VERSION}
SHARED_LIBS=	bind	2.0
CATEGORIES=	net

MASTER_SITES+=	${MASTER_SITE_ISC:=bind9/${VERSION}/}

HOMEPAGE=	http://www.isc.org/products/BIND/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# ISC
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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/bind
	mv ${PREFIX}/bind/include/* ${PREFIX}/include/bind

.include <bsd.port.mk>
