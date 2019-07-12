# $OpenBSD: Makefile,v 1.26 2019/07/12 20:48:24 sthen Exp $

COMMENT=		Dynamic DNS service update client

DISTNAME=		ddclient-3.8.3
CATEGORIES=		net
REVISION=		1

HOMEPAGE=		http://ddclient.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

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
	@sed -i -e "s,/var/cache/ddclient/,/var/db/ddclient/,g;" \
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
