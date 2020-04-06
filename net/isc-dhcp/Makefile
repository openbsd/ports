# $OpenBSD: Makefile,v 1.57 2020/04/06 22:56:29 cwen Exp $

COMMENT-main=	ISC DHCP Server
COMMENT-client=	ISC DHCP Client
COMMENT-omapi=	ISC DHCP OMAPI

VERSION=	4.4.2
DISTNAME=	isc-dhcp-${VERSION}
PKGNAME=	isc-dhcp-${VERSION:S/-P/./}
PKGNAME-main=	isc-dhcp-server-${VERSION:S/-P/./}
PKGNAME-client=	isc-dhcp-client-${VERSION:S/-P/./}
PKGNAME-omapi=	isc-dhcp-omapi-${VERSION:S/-P/./}
CATEGORIES=	net

DISTFILES=	dhcp-${VERSION}.tar.gz
WRKDIST=	${WRKDIR}/dhcp-${VERSION}
PATCHORIG=	.orig.port

MASTER_SITES=	${MASTER_SITE_ISC:=dhcp/${VERSION}/} \
		${MASTER_SITE_ISC:=dhcp/}

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
	${INSTALL_DATA} ${WRKSRC}/server/dhcpd.conf.example \
	    ${PREFIX}/${EXAMPLEDIR}/dhcpd.conf
	${INSTALL_DATA} ${WRKSRC}/client/dhclient.conf.example \
	    ${PREFIX}/${EXAMPLEDIR}/dhclient.conf

.include <bsd.port.mk>
