# $OpenBSD: Makefile,v 1.9 2015/06/19 16:34:41 sthen Exp $

COMMENT=	l2tp client/server

DISTNAME=	xl2tpd-1.3.1
REVISION=	6

CATEGORIES=	net

HOMEPAGE=	http://www.xelerance.com/services/software/xl2tpd/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c util

# https://github.com/xelerance/xl2tpd/
MASTER_SITES=	http://download.openswan.org/xl2tpd/

FAKE_FLAGS=	DESTDIR= MANDIR=${WRKINST}${PREFIX}/man
NO_TEST=	Yes

do-configure:
	perl -pi -e 's,/etc,${SYSCONFDIR},' ${WRKSRC}/file.h

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xl2tpd/
	cd ${WRKSRC}/doc; ${INSTALL_DATA} l2tpd.conf.sample \
	    l2tp-secrets.sample ../examples/ppp-options.xl2tpd \
	    ${PREFIX}/share/examples/xl2tpd/

# Only build xl2tpd/xl2tpd-control for now; pfc A) needs something that was
# stripped from our libpcap and B) isn't useful with our old pppd anyway.
# If enabling this, these 4 lines can go.
ALL_TARGET=	xl2tpd xl2tpd-control
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xl2tpd{,-control} ${PREFIX}/sbin/
	${INSTALL_DATA} ${WRKSRC}/doc/*.8 ${PREFIX}/man/man8/
	${INSTALL_DATA} ${WRKSRC}/doc/*.5 ${PREFIX}/man/man5/

.include <bsd.port.mk>
