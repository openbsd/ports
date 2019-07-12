# $OpenBSD: Makefile,v 1.51 2019/07/12 20:48:29 sthen Exp $

COMMENT-main=	ISC DHCP Server
COMMENT-client=	ISC DHCP Client
COMMENT-omapi=	ISC DHCP OMAPI

VERSION=	4.4.1
DISTNAME=	isc-dhcp-${VERSION}
PKGNAME=	isc-dhcp-${VERSION:S/-P/./}
PKGNAME-main=	isc-dhcp-server-${VERSION:S/-P/./}
PKGNAME-client=	isc-dhcp-client-${VERSION:S/-P/./}
PKGNAME-omapi=	isc-dhcp-omapi-${VERSION:S/-P/./}
CATEGORIES=	net
REVISION-client=0
REVISION-main=	0
REVISION-omapi=	0

DISTFILES=	dhcp-${VERSION}.tar.gz
WRKDIST=	${WRKDIR}/dhcp-${VERSION}

MASTER_SITES=	${MASTER_SITE_ISC:=dhcp/${VERSION}/} \
		${MASTER_SITE_ISC:=dhcp/}

HOMEPAGE=	http://www.isc.org/software/dhcp/

# MPL 2.0
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MULTI_PACKAGES=		-main -omapi -client

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	--enable-early-chroot \
			--enable-paranoia \

NO_TEST=		Yes

EXAMPLEDIR=		share/examples/isc-dhcp

MAKE_ENV +=	CC='${CC}'

# because we may want to patch bind, you know
post-extract:
	cd ${WRKDIST}/bind && tar zxf bind.tar.gz

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${EXAMPLEDIR}
	${INSTALL_SCRIPT} ${FILESDIR}/dhclient-script ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/server/dhcpd.conf.example \
	    ${PREFIX}/${EXAMPLEDIR}/dhcpd.conf
	${INSTALL_DATA} ${WRKSRC}/client/dhclient.conf.example \
	    ${PREFIX}/${EXAMPLEDIR}/dhclient.conf

.include <bsd.port.mk>
