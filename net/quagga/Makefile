# $OpenBSD: Makefile,v 1.14 2009/05/12 12:18:04 sthen Exp $

COMMENT=	multi-threaded routing daemon

DISTNAME=	quagga-0.99.12
SHARED_LIBS=    ospf	0.0     \
                zebra	0.0
CATEGORIES=	net
MASTER_SITES=	http://www.quagga.net/download/

HOMEPAGE=	http://www.quagga.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m readline termcap

STATEDIR?=	/var/quagga
SUBST_VARS=	CONFDIR STATEDIR

USE_GMAKE=	Yes
CONFDIR=	${SYSCONFDIR}/quagga
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu old
CONFIGURE_ARGS+=--includedir=${LOCALBASE}/include/quagga \
		--sysconfdir=${CONFDIR} \
		--localstatedir=${STATEDIR} \
		--enable-user=_quagga \
		--enable-group=_quagga \
		--enable-vtysh \
		--enable-vtysh-group=_quagga \
		--mandir=${LOCALBASE}/man \
		--infodir=${LOCALBASE}/info
CONFIGURE_ENV=	LIBS=-lcurses

FAKE_FLAGS=    exampledir='${PREFIX}/share/examples/quagga'

# XXX broken
#FLAVORS=	snmp
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
