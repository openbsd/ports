# $OpenBSD: Makefile,v 1.2 2009/03/06 17:13:02 todd Exp $

COMMENT=		dns relay for ad blocking

DISTNAME=		adsuck-1.1
CATEGORIES=		net

HOMEPAGE=		http://www.peereboom.us/adsuck/
MAINTAINER=		Todd T. Fries <todd@openbsd.org>
EXTRACT_SUFX=		.tgz

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   http://www.peereboom.us/adsuck/snapshot/

NO_REGRESS=     Yes
WANTLIB=        c ldns

BUILD_DEPENDS=	::net/ldns/libldns
RUN_DEPENDS=	::net/ldns/libldns
		
MAKE_FLAGS=	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/cat"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/adsuck
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/adsuck
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/adsuck
	${INSTALL_DATA} ${WRKSRC}/files/README ${PREFIX}/share/doc/adsuck
	${SUBST_CMD} -c ${FILESDIR}/README.dhclient ${WRKDIR}/README.dhclient
	${INSTALL_DATA} ${WRKDIR}/README.dhclient ${PREFIX}/share/doc/adsuck/README.dhclient
	${INSTALL_DATA} ${FILESDIR}/dhclient-script.diff ${PREFIX}/share/adsuck
	${INSTALL_DATA} ${WRKSRC}/files/hosts.big ${PREFIX}/share/examples/adsuck
	${INSTALL_DATA} ${WRKSRC}/files/hosts.small ${PREFIX}/share/examples/adsuck
	${INSTALL_DATA} ${WRKSRC}/files/resolv.conf ${PREFIX}/share/examples/adsuck

.include <bsd.port.mk>
