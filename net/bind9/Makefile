# $OpenBSD: Makefile,v 1.29 2002/03/23 22:05:48 lebel Exp $

COMMENT=	Berkeley Internet Name Daemon

VERSION=	9.2.0
DISTNAME=	bind-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.499

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

# XXX workaround gcc bugs on sparc64
.if ${MACHINE_ARCH:Msparc64}
PATCH_LIST=	gcc-* patch-*
.endif

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libtool ${CONFIGURE_SHARED} \
			--localstatedir=/var \
			--enable-libbind \
			--with-openssl="/usr"

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}

FLAVORS=		debug static threads
FLAVOR?=

.if ${FLAVOR:L:Mdebug}
CFLAGS+=		"-g"
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

EXAMPLEFILES=	named.conf named.root \
		named.localhost named.loopback

MISCDOCFILES=	dnssec ipv6 migration migration-4to9 \
		options rfc-compliance roadmap sdb

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bind9/arm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bind9/misc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bind9
	${INSTALL_DATA} ${WRKSRC}/doc/arm/*.html ${PREFIX}/share/doc/bind9/arm
	${INSTALL_DATA} ${WRKSRC}/doc/arm/*.gif  ${PREFIX}/share/doc/bind9/arm
.for file in ${EXAMPLEFILES}
	${INSTALL_DATA} ${FILESDIR}/${file} ${PREFIX}/share/examples/bind9
.endfor
.for file in ${MISCDOCFILES}
	${INSTALL_DATA} ${WRKSRC}/doc/misc/${file} ${PREFIX}/share/doc/bind9/misc
.endfor
.for file in bind9-enable bind9-disable
	@sed s,y0y0y0,${TRUEPREFIX}, < ${FILESDIR}/${file} > \
		${PREFIX}/sbin/${file}
	@chmod 555 ${PREFIX}/sbin/${file}
	@chown root:wheel ${PREFIX}/sbin/${file}
.endfor

.include <bsd.port.mk>
