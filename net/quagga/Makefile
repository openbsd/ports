# $OpenBSD: Makefile,v 1.8 2007/06/20 18:05:36 rui Exp $

COMMENT=	"multi-threaded routing daemon"

DISTNAME=	quagga-0.99.7
SHARED_LIBS=    ospf	0.0     \
                zebra	0.0
CATEGORIES=	net
MASTER_SITES=	http://www.quagga.net/download/

HOMEPAGE=	http://www.quagga.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m

STATEDIR?=	/var/quagga
SUBST_VARS=	CONFDIR STATEDIR

USE_GMAKE=	Yes
CONFDIR=	${SYSCONFDIR}/quagga
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu old
CONFIGURE_ARGS+=--includedir=${PREFIX}/include/quagga \
		--sysconfdir=${CONFDIR} \
		--localstatedir=${STATEDIR} \
		--enable-user=_quagga \
		--enable-group=_quagga \
		--enable-vtysh \
		--enable-vtysh-group=_quagga
CONFIGURE_ENV=	LIBS=-lcurses

FAKE_FLAGS=    exampledir='${PREFIX}/share/examples/quagga'

FLAVORS=	snmp
FLAVOR?=

.if ${FLAVOR:L:Msnmp}
LIB_DEPENDS=	::net/net-snmp
CONFIGURE_ARGS+= --enable-snmp
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
.else
CONFIGURE_ARGS+= --disable-snmp
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/quagga
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/quagga
	${INSTALL_DATA} ${WRKSRC}/SERVICES ${PREFIX}/share/doc/quagga

.include <bsd.port.mk>
