# $OpenBSD: Makefile,v 1.7 2007/03/23 10:48:02 ajacoutot Exp $

COMMENT=		"Dynamic DNS service update client"

DISTNAME=		ddclient-3.7.1
CATEGORIES=		net

HOMEPAGE=		http://ddclient.sourceforge.net/

MAINTAINER=		Joerg Zinke <umaxx@oleco.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ddclient/}

RUN_DEPENDS=		:p5-IO-Socket-SSL-*:security/p5-IO-Socket-SSL

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

SAMPLES=	sample-etc_cron.d_ddclient sample-etc_ddclient.conf \
		sample-etc_dhclient-exit-hooks sample-etc_dhcpc_dhcpcd-eth0.exe \
		sample-etc_ppp_ip-up.local

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
