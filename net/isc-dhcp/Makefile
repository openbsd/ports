# $OpenBSD: Makefile,v 1.7 2004/12/16 00:31:22 alek Exp $

COMMENT=	"Dynamic Host Control Protocol Server"

VERSION=	3.0.1
DISTNAME=	isc-dhcp-${VERSION}
CATEGORIES=	net

DISTFILES=	dhcp-${VERSION}.tar.gz
WRKDIST=	${WRKDIR}/dhcp-${VERSION}

MASTER_SITES=	ftp://ftp.isc.org/isc/dhcp/ \
		ftp://ftp.isc.org/isc/dhcp/dhcp-3.0-history/

HOMEPAGE=	http://www.isc.org/products/DHCP/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE=	simple

EXAMPLEDIR=		share/examples/isc-dhcp

post-extract:
	@sed s,y0y0y0,${PREFIX}, < ${FILESDIR}/site.conf > ${WRKSRC}/site.conf

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/server/dhcpd.conf ${PREFIX}/${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/client/dhclient.conf ${PREFIX}/${EXAMPLEDIR}

.include <bsd.port.mk>
