COMMENT-main=	ISC DHCP Server
COMMENT-client=	ISC DHCP Client
COMMENT-omapi=	ISC DHCP OMAPI

VERSION=	4.4.3-P1
REVISION=	1

DISTNAME=	isc-dhcp-${VERSION}
PKGNAME-main=	isc-dhcp-server-${VERSION:S/-P/pl/}
PKGNAME-client=	isc-dhcp-client-${VERSION:S/-P/pl/}
PKGNAME-omapi=	isc-dhcp-omapi-${VERSION:S/-P/pl/}
CATEGORIES=	net

DISTFILES=	dhcp-${VERSION}.tar.gz
WRKDIST=	${WRKDIR}/dhcp-${VERSION}

SITES=		${SITE_ISC:=dhcp/${VERSION}/} \
		${SITE_ISC:=dhcp/}

HOMEPAGE=	https://www.isc.org/dhcp/

# MPL 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c

MULTI_PACKAGES=		-main -omapi -client

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-early-chroot \
			--enable-paranoia \
			--with-srv-lease-file=/var/db/isc-dhcp/dhcpd.leases \
			--with-srv6-lease-file=/var/db/isc-dhcp/dhcpd6.leases

NO_TEST=		Yes

EXAMPLEDIR=		share/examples/isc-dhcp

MAKE_ENV +=	CC='${CC}'

# Fix "undefined reference to `__atomic_store_8'"
.if ${MACHINE_ARCH:Mhppa}
WANTLIB +=	atomic
LIB_DEPENDS +=	lang/gcc/${MODGCC4_VERSION},-libs
MAKE_FLAGS +=	LDFLAGS="${LDFLAGS} -latomic"
.endif

# because we may want to patch bind, you know
post-extract:
	cd ${WRKDIST}/bind && tar zxf bind.tar.gz

post-build:
	cd ${WRKSRC}/keama; \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

post-install:
	cd ${WRKSRC}/keama; \
	    ${SETENV} ${MAKE_ENV} ${FAKE_SETUP} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} install
	${INSTALL_DATA_DIR} ${PREFIX}/${EXAMPLEDIR}
	${INSTALL_SCRIPT} ${FILESDIR}/dhclient-script ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/dhcp-lease-list.pl \
	    ${PREFIX}/bin/dhcp-lease-list
	${INSTALL_DATA} ${WRKSRC}/server/dhcpd.conf.example \
	    ${PREFIX}/${EXAMPLEDIR}/dhcpd.conf
	${INSTALL_DATA} ${WRKSRC}/client/dhclient.conf.example \
	    ${PREFIX}/${EXAMPLEDIR}/dhclient.conf

.include <bsd.port.mk>
