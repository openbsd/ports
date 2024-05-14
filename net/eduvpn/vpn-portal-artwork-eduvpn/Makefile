COMMENT=	eduVPN artwork for vpn-user-portal

V=		3.0.4
DISTNAME=	vpn-portal-artwork-eduVPN-$V

# AGPL-3.0
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
PREFIX=		/var/www

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/vpn-user-portal \
	    ${WRKINST}/usr/local/share/doc/vpn-portal-artwork-eduvpn

	cd ${WRKSRC}; pax -rw * ${WRKINST}/var/www/vpn-user-portal

	cd ${WRKINST}/var/www/vpn-user-portal; rm -r dev; \
	    mv *.md */*.md ${WRKINST}/usr/local/share/doc/vpn-portal-artwork-eduvpn; \
	    for i in *; do (cd $$i; mkdir eduVPN; mv !(eduVPN) eduVPN/); done

	cd ${WRKINST}/var/www/vpn-user-portal; mkdir web; mv {css,fonts,img} web/

.include <bsd.port.mk>
