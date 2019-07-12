# $OpenBSD: Makefile,v 1.21 2019/07/12 21:02:26 sthen Exp $

COMMENT=	portable, encrypted, compressed tunnel

DISTNAME =	zebedee-2.5.3
CATEGORIES=	security net

HOMEPAGE=	http://www.winton.org.uk/zebedee/

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=zebedee/} \
		http://www.winton.org.uk/zebedee/

FLAVORS=	udp_spoof
FLAVOR?=

DEFINES_openbsd= -DHAVE_PTHREADS -DBUGGY_FORK_WITH_THREADS
OSLIBS_openbsd=	-pthread

BUILD_DEPENDS=	archivers/bzip2

.if ${FLAVOR:Mudp_spoof}
WANTLIB +=	lib/libnet-1.0/net=0
LIB_DEPENDS+=	libnet->=1.0,<1.1:net/libnet/1.0
LIBNET_DEFS=	`libnet-config-1.0 --defines`
LIBNET_INCS=	`libnet-config-1.0 --cflags`
DEFINES_openbsd+= -DUSE_UDP_SPOOFING ${LIBNET_DEFS} ${LIBNET_INCS}
LIBNET_LIBS=	`libnet-config-1.0 --libs`
OSLIBS_openbsd+= ${LIBNET_LIBS}
.endif

NO_TEST=	Yes

MAKE_FLAGS+=	CC="${CC}" CFLAGS="${CFLAGS}" OS=openbsd \
		DEFINES_openbsd="${DEFINES_openbsd}" \
		OSLIBS_openbsd="${OSLIBS_openbsd}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zebedee ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/ftpgw.tcl ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/zebedee.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/ftpgw.tcl.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/server.zbd ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/vncviewer.zbd ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/vncserver.zbd ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/server.key ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/server.id ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/client1.key ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/client2.key ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/clients.id ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zebedee
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/zebedee
	${INSTALL_DATA} ${WRKSRC}/LICENCE.txt ${PREFIX}/share/doc/zebedee
	${INSTALL_DATA} ${WRKSRC}/CHANGES.txt ${PREFIX}/share/doc/zebedee
	${INSTALL_DATA} ${WRKSRC}/zebedee.html ${PREFIX}/share/doc/zebedee
	${INSTALL_DATA} ${WRKSRC}/ftpgw.tcl.html ${PREFIX}/share/doc/zebedee

.include <bsd.port.mk>
