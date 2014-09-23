# $OpenBSD: Makefile,v 1.35 2014/09/23 10:13:40 brad Exp $

COMMENT-main=	ISC DHCP Server
COMMENT-client=	ISC DHCP Client
COMMENT-omapi=	ISC DHCP OMAPI

VERSION=	4.3.1
DISTNAME=	isc-dhcp-${VERSION}
PKGNAME=	isc-dhcp-${VERSION:S/-P/./}
PKGNAME-main=	isc-dhcp-server-${VERSION:S/-P/./}
PKGNAME-client=	isc-dhcp-client-${VERSION:S/-P/./}
PKGNAME-omapi=	isc-dhcp-omapi-${VERSION:S/-P/./}
CATEGORIES=	net

DISTFILES=	dhcp-${VERSION}.tar.gz
WRKDIST=	${WRKDIR}/dhcp-${VERSION}

MASTER_SITES=	${MASTER_SITE_ISC:=dhcp/${VERSION}/} \
		${MASTER_SITE_ISC:=dhcp/}

HOMEPAGE=	http://www.isc.org/software/dhcp/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MULTI_PACKAGES=		-main -omapi -client

USE_GROFF=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	--enable-early-chroot \
			--enable-paranoia \

NO_TEST=		Yes

EXAMPLEDIR=		share/examples/isc-dhcp

# XXX hack, adapt when updating
post-extract:
	cd ${WRKSRC}/bind; tar xzf bind.tar.gz; \
	perl -pi -e 's,(.*arc4random_addrandom.*),/* $$1 */,' \
	    ${WRKSRC}/bind/bind-*/lib/isc/random.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${EXAMPLEDIR}
	${INSTALL_PROGRAM} ${FILESDIR}/dhclient-script ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/server/dhcpd.conf.example \
	    ${PREFIX}/${EXAMPLEDIR}/dhcpd.conf
	${INSTALL_DATA} ${WRKSRC}/client/dhclient.conf.example \
	    ${PREFIX}/${EXAMPLEDIR}/dhclient.conf

.include <bsd.port.mk>
