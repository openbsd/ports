# $OpenBSD: Makefile,v 1.41 2003/02/03 13:37:46 jakob Exp $

COMMENT=	ISC BIND 9 libraries
COMMENT-server=	ISC BIND 9 server

VERSION=	9.2.2rc1
DISTNAME=	bind-${VERSION}

FULLPKGNAME=	bind-lib-${VERSION}
PKGNAME-server=	bind-server-${VERSION}

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

.if ${MACHINE_ARCH:Msparc64}
CFLAGS+=	-fno-stack-protector
.endif

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--with-libtool ${CONFIGURE_SHARED} \
			--localstatedir=/var \
			--disable-libbind \
			--with-openssl=/usr \
			--with-randomdev=/dev/arandom
AUTOCONF_NEW=		Yes

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}

REGRESS_TARGET=		test

MULTI_PACKAGES=		-server
SUBPACKAGE?=

FLAVORS=		static threads
FLAVOR?=

.if ${SUBPACKAGE} == "-server" && ${FLAVOR} != "static"
RUN_DEPENDS=		:bind-lib-${VERSION}:net/bind9
.endif

.if ${FLAVOR:L:Mstatic}
CFLAGS+=		"-static"
NO_SHARED_LIBS=		Yes
.endif

.if ${FLAVOR:L:Mthreads}
CONFIGURE_ARGS+=	--enable-threads
.else
CONFIGURE_ARGS+=	--disable-threads
.endif

MISCDOCFILES=	dnssec ipv6 migration migration-4to9 \
		options rfc-compliance roadmap sdb

post-extract:
	rm -fr ${WRKSRC}/lib/bind

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bind9/arm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bind9/misc
	${INSTALL_DATA} ${WRKSRC}/doc/arm/*.html ${PREFIX}/share/doc/bind9/arm
.for file in ${MISCDOCFILES}
	${INSTALL_DATA} ${WRKSRC}/doc/misc/${file} ${PREFIX}/share/doc/bind9/misc
.endfor

.include <bsd.port.mk>
