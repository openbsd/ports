COMMENT=	update client for dynamic DNS services

GH_ACCOUNT=	ddclient
GH_PROJECT=	ddclient
GH_TAGNAME=	v3.9.1

CATEGORIES=	net

HOMEPAGE=	https://ddclient.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Data-Validate-IP \
		net/p5-IO-Socket-INET6 \
		security/p5-IO-Socket-SSL

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

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
