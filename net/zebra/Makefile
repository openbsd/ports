# $OpenBSD: Makefile,v 1.16 2001/01/11 05:46:50 itojun Exp $
# KAME Id: Makefile,v 1.5 1999/09/13 16:27:41 itojun Exp
# Originally by: peter.galbavy@knowledge.com

DISTNAME=	zebra-0.90
CATEGORIES=	net
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.zebra.org/pub/zebra/

HOMEPAGE=	http://www.zebra.org/

MAINTAINER=	Jun-ichiro itojun Hagino <itojun@itojun.org>

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

.if ${FLAVOR:L:Msnmp}
LIB_DEPENDS=	snmp.41::net/ucd-snmp
CONFIGURE_ARGS+= --enable-snmp
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zebra
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/zebra
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/zebra
	${INSTALL_DATA} ${WRKSRC}/bgpd/README.mbgp ${PREFIX}/share/doc/zebra
	${INSTALL_DATA} ${WRKINST}/etc/zebra/* ${PREFIX}/share/examples/zebra

.include <bsd.port.mk>
