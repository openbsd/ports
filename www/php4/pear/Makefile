# $OpenBSD: Makefile,v 1.2 2002/06/24 19:40:55 avsm Exp $

COMMENT=	"collection of base classes for common PHP tasks"
PKGNAME= 	php4-pear-${V}
HOMEPAGE=	http://pear.php.net/

ALL_TARGET=	pear
CONFIGURE_ARGS= --with-pear --without-mysql --without-xml

do-install:
	cd ${WRKSRC}/pear && env INSTALL_ROOT=${DESTDIR} make install
	cd ${PREFIX}/lib && tar -zxvf ${FILESDIR}/pear-412-421.tgz

.include <bsd.port.mk>
