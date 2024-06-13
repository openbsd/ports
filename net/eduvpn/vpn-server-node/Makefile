COMMENT=	VPN management server node

V=		3.0.4
DISTNAME=	vpn-server-node-$V
# Debian packaging in https://git.sr.ht/~fkooman/vpn-server-node.deb/tree

# AGPL-3.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/php
BUILD_DEPENDS=	www/composer
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-curl \
		net/eduvpn/vpn-daemon \
		net/openvpn \
		net/wireguard-tools \

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
PREFIX=		/var/www
LPREFIX=	${WRKINST}/usr/local

# no external deps, just generate an autoload file
do-configure:
	cd ${WRKSRC}; composer dump-autoload

do-install:
	${INSTALL_DATA_DIR} ${LPREFIX}/share/{doc,examples}/vpn-server-node \
	    ${LPREFIX}/libexec/vpn-server-node ${PREFIX}/vpn-server-node

	${INSTALL_DATA} ${WRKSRC}/{LICENSE,*.md} ${LPREFIX}/share/doc/vpn-server-node/

	${INSTALL_DATA} ${WRKSRC}/config/config.php.example \
	    ${LPREFIX}/share/examples/vpn-server-node/

	cd ${WRKSRC}/libexec; for i in *.php; do \
		${INSTALL_SCRIPT} $$i \
		    ${LPREFIX}/libexec/vpn-server-node/$${i%.php}; \
	done

	cd ${WRKSRC}; pax -rw src vendor ${PREFIX}/vpn-server-node/

	cd ${PREFIX}/vpn-server-node; \
	ln -s ${SYSCONFDIR}/vpn-server-node config; \
	ln -s ${SYSCONFDIR}/vpn-server-node/openvpn openvpn-config; \
	ln -s ${SYSCONFDIR}/vpn-server-node/wireguard wg-config

.include <bsd.port.mk>
