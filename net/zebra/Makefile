# $OpenBSD: Makefile,v 1.12 2000/09/06 05:48:49 brad Exp $
# KAME Id: Makefile,v 1.5 1999/09/13 16:27:41 itojun Exp

#
# The version of the port was done by peter.galbavy@knowledge.com
#
DISTNAME=	zebra-0.88
CATEGORIES=	net
NEED_VERSION=	1.324
MASTER_SITES=	ftp://ftp.zebra.org/pub/zebra/

HOMEPAGE=	http://www.zebra.org/

MAINTAINER=	itojun@itojun.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# you might need debugging, it's a developer release !
#CFLAGS+=	-g

SYSCONFDIR=	/etc/zebra
CONFIGURE_STYLE= gnu

#
# The snmp flavor doesn't quite work. The configue test for libsnmp.a
# fails because the first test for it fails by not looking in
# /usr/local/lib and the second uses the cached fail. Report sent to
# zebra maintainers.
#
FLAVORS=	snmp
FLAVOR?=

# broken in 0.88 - try later
# CONFIGURE_ARGS+= --enable-vtysh

.if ${FLAVOR:L:Msnmp}
BUILD_DEPENDS=	${LOCALBASE}/lib/libsnmp.a::net/ucd-snmp
CONFIGURE_ARGS+= --enable-snmp
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zebra
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/zebra
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/zebra
	${INSTALL_DATA} ${WRKSRC}/bgpd/README.mbgp ${PREFIX}/share/doc/zebra
	${INSTALL_DATA} ${WRKINST}/etc/zebra/* ${PREFIX}/share/examples/zebra

.include <bsd.port.mk>
