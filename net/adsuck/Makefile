# $OpenBSD: Makefile,v 1.32 2018/09/04 12:46:16 espie Exp $

COMMENT=		DNS relay for ad blocking

V=			2.5.0
REVISION=		6
GH_TAGNAME=		ADSUCK_${V:S/./_/g}
GH_ACCOUNT=		conformal
GH_PROJECT=		adsuck
DISTNAME=		${GH_PROJECT}-${V}
CATEGORIES=		net

HOMEPAGE=		https://github.com/conformal/adsuck/wiki
MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c event_core event_extra ldns pthread

LIB_DEPENDS=	devel/libevent2 \
		net/ldns/libldns>=1.6.5

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
