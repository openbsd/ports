# $OpenBSD: Makefile,v 1.30 2006/08/03 23:15:58 espie Exp $
# KAME Id: Makefile,v 1.5 1999/09/13 16:27:41 itojun Exp
# Originally by: peter.galbavy@knowledge.com

COMMENT=	"multi-threaded routing daemon"

DISTNAME=	zebra-0.93a
PKGNAME=	${DISTNAME}p3
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.zebra.org/pub/zebra/ \
		ftp://ftp.knowledge.com/pub/mirrors/zebra/ \
		ftp://ftp.ripe.net/mirrors/sites/ftp.zebra.org/pub/zebra/ \
		ftp://ftp.pop-pr.rnp.br/pub/GNU/ftp.zebra.org/zebra/ \
		ftp://ftp.clear.net.nz/pub/zebra/ \
		ftp://ftp.crc.ca/pub/packages/network/zebra/ \
		ftp://ftp.sunet.se/pub/network/zebra/ \
		ftp://ftp.styx.net/mirrors/zebra/

HOMEPAGE=	http://www.zebra.org/

MAINTAINER=	Jun-ichiro itojun Hagino <itojun@itojun.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m ncurses readline 

# you might need debugging, it's a developer release !
#CFLAGS+=	-g

USE_GMAKE=	Yes
CONFDIR=	${SYSCONFDIR}/zebra
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu old
CONFIGURE_ARGS+= --enable-vtysh --sysconfdir=${CONFDIR}
CONFIGURE_ENV=	LIBS=-lcurses

FLAVORS=	snmp
FLAVOR?=

.if ${FLAVOR:L:Msnmp}
LIB_DEPENDS=	netsnmp.>=6.2::net/net-snmp
CONFIGURE_ARGS+= --enable-snmp
WANTLIB+=	crypto
.else
CONFIGURE_ARGS+= --disable-snmp
.endif

SUBST_VARS=	CONFDIR

post-extract:
.for f in vtysh.1 bgpd.8 ospf6d.8 ospfd.8 ripd.8 ripngd.8 zebra.8 zebra.info
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
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/zebra/* ${PREFIX}/share/examples/zebra

.include <bsd.port.mk>
