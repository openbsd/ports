# $OpenBSD: Makefile,v 1.1.1.1 2002/06/24 19:30:30 avsm Exp $

COMMENT=	"collection of base classes for common PHP tasks"
PKGNAME= 	php4-pear-${V}
HOMEPAGE=	http://pear.php.net/

CONFIGURE_STYLE=autoconf
ALL_TARGET=	pear
CONFIGURE_ARGS= --without-mysql --without-xml

do-install:
	cd ${WRKSRC}/pear && env INSTALL_ROOT=${DESTDIR} make install
	cd ${PREFIX}/lib && tar -zxvf ${FILESDIR}/pear-412-421.tgz

.include <bsd.port.mk>
