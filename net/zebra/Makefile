# $OpenBSD: Makefile,v 1.20 2001/04/02 15:38:52 brad Exp $
# KAME Id: Makefile,v 1.5 1999/09/13 16:27:41 itojun Exp
# Originally by: peter.galbavy@knowledge.com

COMMENT=	"multi-threaded routing daemon"

DISTNAME=	zebra-0.91a
CATEGORIES=	net
NEED_VERSION=	1.383
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
SEPARATE_BUILD=	concurrent
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
.else
CONFIGURE_ARGS+= --disable-snmp
.endif

post-extract:
.for f in bgpd.8 ospf6d.8 ospfd.8 ripd.8 ripngd.8 zebra.8
	@cd ${WRKSRC}/doc; sed \
		-e s#/usr/local/etc#@sysconfdir@#g \
		-e s#/usr/local/sbin#@prefix@/sbin#g \
			${f} > ${f}.in && \
	rm -f ${f}
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zebra
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/zebra
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/zebra
	${INSTALL_DATA} ${WRKINST}/etc/zebra/* ${PREFIX}/share/examples/zebra

.include <bsd.port.mk>
