COMMENT=	Let's Connect! artwork for vpn-user-portal

V=		3.0.3
DISTNAME=	vpn-portal-artwork-LC-$V
REVISION=	0

# AGPL-3.0
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
PREFIX=		/var/www

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/vpn-user-portal \
	    ${WRKINST}/usr/local/share/doc/vpn-portal-artwork-lc

	cd ${WRKSRC}; pax -rw * ${WRKINST}/var/www/vpn-user-portal

	cd ${WRKINST}/var/www/vpn-user-portal; rm -r dev; \
	    mv *.md */*.md ${WRKINST}/usr/local/share/doc/vpn-portal-artwork-lc; \
	    for i in *; do (cd $$i; mkdir LC; mv !(LC) LC/); done

	# no fonts in LC version
	cd ${WRKINST}/var/www/vpn-user-portal; mkdir web; mv {css,img} web/

.include <bsd.port.mk>
