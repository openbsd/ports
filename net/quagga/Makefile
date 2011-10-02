# $OpenBSD: Makefile,v 1.22 2011/10/02 02:01:07 sthen Exp $

COMMENT=	multi-threaded routing daemon

DISTNAME=	quagga-0.99.19
REVISION=	0
SHARED_LIBS=	ospf		0.0 \
		ospfapiclient	0.0 \
		zebra		0.0
CATEGORIES=	net
MASTER_SITES=	http://www.quagga.net/download/

HOMEPAGE=	http://www.quagga.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c curses m readline termcap

STATEDIR?=	/var/quagga
SUBST_VARS=	CONFDIR STATEDIR

BUILD_DEPENDS=	lang/gawk
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFDIR=	${SYSCONFDIR}/quagga
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu old
CONFIGURE_ARGS+= --includedir=${LOCALBASE}/include/quagga \
		--sysconfdir=${CONFDIR} \
		--localstatedir=${STATEDIR} \
		--enable-user=_quagga \
		--enable-group=_quagga \
		--enable-vty-group=_quagga \
		--enable-vtysh \
		--mandir=${LOCALBASE}/man \
		--infodir=${LOCALBASE}/info
.if ${MACHINE_ARCH:Mhppa} || ${MACHINE_ARCH:Marm}
CONFIGURE_ARGS+= --disable-pie
.endif
CONFIGURE_ENV=	LIBS=-lcurses

MAKE_FLAGS=	MAKEINFO="makeinfo --no-split"
FAKE_FLAGS=	exampledir='${PREFIX}/share/examples/quagga' \
		${MAKE_FLAGS}

FLAVORS=	snmp
FLAVOR?=

.if ${FLAVOR:L:Msnmp}
LIB_DEPENDS=	net/net-snmp
WANTLIB+=	crypto netsnmp
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
	${INSTALL_DATA} ${WRKSRC}/doc/quagga.info* ${PREFIX}/info

.include <bsd.port.mk>
