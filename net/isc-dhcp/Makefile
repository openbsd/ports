# $OpenBSD: Makefile,v 1.19 2009/10/22 21:13:29 jakob Exp $

COMMENT-main=	ISC DHCP Server
COMMENT-client=	ISC DHCP Client
COMMENT-omapi=	ISC DHCP OMAPI

VERSION=	3.1.3
DISTNAME=	isc-dhcp-${VERSION}
PKGNAME=	isc-dhcp-${VERSION}
CATEGORIES=	net

DISTFILES=	dhcp-${VERSION}.tar.gz
WRKDIST=	${WRKDIR}/dhcp-${VERSION}

PKGNAME-main=	isc-dhcp-server-${VERSION}
PKGNAME-client=	isc-dhcp-client-${VERSION}
PKGNAME-omapi=	isc-dhcp-omapi-${VERSION}

MASTER_SITES=	ftp://ftp.isc.org/isc/dhcp/ \
		ftp://ftp.isc.org/isc/dhcp/dhcp-3.0-history/

HOMEPAGE=	http://www.isc.org/products/DHCP/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c
NO_REGRESS=		Yes

MULTI_PACKAGES=		-main -omapi -client

CONFIGURE_STYLE=	simple

EXAMPLEDIR=		share/examples/isc-dhcp

do-configure:
	cd ${WRKSRC} && ./configure \
	--copts "${CONFIGURE_ARGS} -DPARANOIA -DEARLY_CHROOT ${CFLAGS}"

post-extract:
	@sed s,y0y0y0,${PREFIX}, < ${FILESDIR}/site.conf > ${WRKSRC}/site.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/server/dhcpd.conf ${PREFIX}/${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/client/dhclient.conf ${PREFIX}/${EXAMPLEDIR}

.include <bsd.port.mk>
