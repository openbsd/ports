# $OpenBSD: Makefile,v 1.23 2012/09/27 18:20:41 gonzalo Exp $

COMMENT=		DNS relay for ad blocking

DISTNAME=		adsuck-2.4.3
CATEGORIES=		net

HOMEPAGE=		http://opensource.conformal.com/wiki/Adsuck
MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>
EXTRACT_SUFX=		.tgz

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://opensource.conformal.com/snapshots/adsuck/

WANTLIB += c event ldns

LIB_DEPENDS=	net/ldns/libldns>=1.6.5

MAKE_FLAGS=	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/man"

_files= Hosts.blc Hosts.mis Hosts.pub Hosts.rsk Hosts.sex \
	Hosts.trc hosts.small hosts.yoyo regex resolv.conf

pre-configure:
	${SUBST_CMD} ${WRKSRC}/dhclient-adsuck

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/adsuck
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/adsuck
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/adsuck
	${INSTALL_DATA} ${WRKSRC}/files/README ${PREFIX}/share/doc/adsuck
	${INSTALL_SCRIPT} ${WRKSRC}/dhclient-adsuck ${PREFIX}/sbin

.for _f in ${_files}
	${INSTALL_DATA} ${WRKSRC}/files/${_f} ${PREFIX}/share/examples/adsuck
.endfor

.include <bsd.port.mk>
