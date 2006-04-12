# $OpenBSD: Makefile,v 1.7 2006/04/12 21:01:45 david Exp $

COMMENT=	"multi-threaded routing daemon"

DISTNAME=	quagga-0.96.4
PKGNAME=	${DISTNAME}p3
CATEGORIES=	net
MASTER_SITES=	http://www.quagga.net/download/

HOMEPAGE=	http://www.quagga.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m

STATEDIR?=	/var/zebra
SUBST_VARS=	CONFDIR STATEDIR

# you might need debugging, it's a developer release !
#CFLAGS+=	-g

USE_GMAKE=	Yes
CONFDIR=	${SYSCONFDIR}/zebra
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu old
CONFIGURE_ARGS+=--includedir=${PREFIX}/include/zebra
CONFIGURE_ARGS+=--sysconfdir=${CONFDIR}
CONFIGURE_ARGS+=--localstatedir=${STATEDIR}
CONFIGURE_ARGS+=--enable-user=_quagga
CONFIGURE_ARGS+=--enable-group=_quagga
CONFIGURE_ENV=	LIBS=-lcurses

FLAVORS=	snmp
FLAVOR?=

.if ${FLAVOR:L:Msnmp}
LIB_DEPENDS=	netsnmp.6.2::net/net-snmp
CONFIGURE_ARGS+= --enable-snmp
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
.else
CONFIGURE_ARGS+= --disable-snmp
.endif

post-extract:
.for f in vtysh.1 bgpd.8 ospf6d.8 ospfd.8 ripd.8 ripngd.8 zebra.8 quagga.info
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
	${INSTALL_DATA} ${WRKSRC}/SERVICES ${PREFIX}/share/doc/zebra
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/zebra/* ${PREFIX}/share/examples/zebra

.include <bsd.port.mk>
