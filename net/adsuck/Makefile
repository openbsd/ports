# $OpenBSD: Makefile,v 1.14 2010/11/15 18:13:45 jasper Exp $

COMMENT=		DNS relay for ad blocking

DISTNAME=		adsuck-1.9
REVISION=		1
CATEGORIES=		net

HOMEPAGE=		http://opensource.conformal.com/wiki/Adsuck
MAINTAINER=		Marco Peereboom <marco@openbsd.org>
EXTRACT_SUFX=		.tgz

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   http://opensource.conformal.com/snapshots/adsuck/

WANTLIB=        c ldns.>=4.4

LIB_DEPENDS=	:libldns->=1.6.5:net/ldns/libldns

MAKE_FLAGS=	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/cat"
USE_GROFF =	Yes

_files= Hosts.blc Hosts.rsk regex \
	Hosts.pub Hosts.trc hosts.small resolv.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/adsuck
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/adsuck
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/adsuck
	${INSTALL_DATA} ${WRKSRC}/files/README ${PREFIX}/share/doc/adsuck
	${INSTALL_DATA} ${FILESDIR}/dhclient-script.diff ${PREFIX}/share/adsuck
.for _f in ${_files}
	${INSTALL_DATA} ${WRKSRC}/files/${_f} ${PREFIX}/share/examples/adsuck
.endfor

.include <bsd.port.mk>
