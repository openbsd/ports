# $OpenBSD: Makefile,v 1.4 2000/09/21 10:17:53 jakob Exp $

VERSION=	9.0.0
DISTNAME=	bind-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.302

MASTER_SITES=	ftp://ftp.isc.org/isc/bind9/${VERSION}/ \
		ftp://ftp.sunet.se/pub/network/isc/bind9/${VERSION}

HOMEPAGE=	http://www.isc.org/products/BIND/

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--prefix=${PREFIX} \
			--sysconfdir=/etc \
			--localstatedir=/var \
			--with-libtool
SEPARATE_BUILD=		concurrent
FAKE_FLAGS+=		DESTDIR=${WRKINST} \
			MAKEDEFS='DESTDIR=${WRKINST}'

EXAMPLEFILES=		named.conf named.root \
			named.localhost named.loopback

FLAVORS=		debug static
FLAVOR?=

.if ${FLAVOR:L} == "debug"
CONFIGURE_ENV+=		CFLAGS=-g
.endif

.if ${FLAVOR:L} == "static"
CONFIGURE_ENV+=		CFLAGS="-O2 -static"
.endif

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/man/bin/*.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/bin/*.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/doc/man/bin/*.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/doc/man/dnssec/*.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bind9
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bind9/arm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bind9/misc
	${INSTALL_DATA} ${WRKSRC}/doc/arm/* ${PREFIX}/share/doc/bind9/arm
	${INSTALL_DATA} ${WRKSRC}/doc/misc/* ${PREFIX}/share/doc/bind9/misc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bind9
.for file in ${EXAMPLEFILES}
	${INSTALL_DATA} ${FILESDIR}/${file} ${PREFIX}/share/examples/bind9
.endfor

.include <bsd.port.mk>
