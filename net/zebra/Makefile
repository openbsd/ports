# $OpenBSD: Makefile,v 1.10 2000/08/23 16:06:03 peter Exp $
# KAME Id: Makefile,v 1.5 1999/09/13 16:27:41 itojun Exp

#
# The version of the port was done by peter.galbavy@knowledge.com
#
DISTNAME=	zebra-0.88
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.zebra.org/pub/zebra/

HOMEPAGE=	http://www.zebra.org/

MAINTAINER=	itojun@itojun.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
DEPENDS+=	net/ucd-snmp
CONFIGURE_ARGS+= --enable-snmp
.endif

# you might need debugging, it's a developer release !
#CFLAGS+=	-g

SYSCONFDIR=	/etc/zebra
CONFIGURE_STYLE= gnu

post-install:
	mkdir -p ${WRKINST}/usr/local/share/zebra
	cp ${WRKINST}/etc/zebra/* ${WRKINST}/usr/local/share/zebra
	chmod 0644 ${WRKINST}/usr/local/share/zebra/*

.include <bsd.port.mk>
