# $OpenBSD: Makefile,v 1.19 2014/03/25 10:06:25 dcoppa Exp $

COMMENT=		Dynamic DNS service update client

DISTNAME=		ddclient-3.8.2
CATEGORIES=		net

HOMEPAGE=		http://ddclient.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ddclient/}

RUN_DEPENDS=		security/p5-Digest-SHA1 \
			security/p5-IO-Socket-SSL

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

SAMPLES=	sample-etc_cron.d_ddclient sample-etc_ddclient.conf \
		sample-etc_dhclient-exit-hooks sample-etc_dhcpc_dhcpcd-eth0.exe \
		sample-etc_ppp_ip-up.local sample-ddclient-wrapper.sh

post-extract:
	@perl -pi -e "s,/var/cache/ddclient/,/var/db/ddclient/,g;" \
		-e "s,/etc/ddclient/,${SYSCONFDIR}/ddclient/,g" \
		${WRKSRC}/ddclient

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ddclient ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ddclient
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ddclient
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/ddclient 
.for i in ${SAMPLES}
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/examples/ddclient
.endfor

.include <bsd.port.mk>
