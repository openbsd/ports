# $OpenBSD: Makefile,v 1.12 2001/02/13 14:26:47 jakob Exp $

VERSION=	9.1.1rc2
DISTNAME=	bind-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.isc.org/isc/bind9/${VERSION}/ \
		ftp://ftp.sunet.se/pub/network/isc/bind9/${VERSION}

HOMEPAGE=	http://www.isc.org/products/BIND/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--localstatedir=/var \
			--with-randomdev="/dev/srandom" \
			--with-openssl="/usr" \
			--with-libtool

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bind9/arm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bind9/misc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bind9
	${INSTALL_MAN} ${WRKSRC}/doc/man/bin/*.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/bin/*.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/doc/man/bin/*.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/doc/man/dnssec/*.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/doc/man/lwres/*.3 ${PREFIX}/man/man3
	${INSTALL_DATA} ${WRKSRC}/doc/arm/*.html ${PREFIX}/share/doc/bind9/arm
	${INSTALL_DATA} ${WRKSRC}/doc/arm/*.gif  ${PREFIX}/share/doc/bind9/arm
	${INSTALL_DATA} ${WRKSRC}/doc/misc/* ${PREFIX}/share/doc/bind9/misc
.for file in ${EXAMPLEFILES}
	${INSTALL_DATA} ${FILESDIR}/${file} ${PREFIX}/share/examples/bind9
.endfor
	@sed s,y0y0y0,${TRUEPREFIX}, < ${FILESDIR}/bind9-enable > \
		${PREFIX}/sbin/bind9-enable
	@chmod 555 ${PREFIX}/sbin/bind9-enable
	@chown root:wheel ${PREFIX}/sbin/bind9-enable

.include <bsd.port.mk>
