# $OpenBSD: Makefile,v 1.14 2019/07/14 00:39:39 naddy Exp $

COMMENT=		radius sniffer

DISTNAME=		radiusniff-0.2
CATEGORIES=     	security

PERMIT_PACKAGE=	Yes
WANTLIB=		c pcap

EXTRACT_SUFX=		.tgz
MASTER_SITES=		http://adm.freelsd.net/ADM/

WRKSRC=			${WRKDIR}/radiusniff-0.2

NO_TEST=		Yes

do-build:
	cd ${WRKSRC} && ${CC} -DOPENBSD \
	-DDICTIONARY_FILENAME=\"${PREFIX}/share/radiusniff/dictionary\" \
	-DCLIENTS_FILENAME=\"${PREFIX}/share/radiusniff/clients\" \
	-I${LOCALBASE}/include -L${LOCALBASE}/lib -o radiusniff \
	radiusniff.c md5.c -lpcap

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/radiusniff ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/radiusniff/
	${INSTALL_DATA} ${WRKSRC}/{dictionary,clients} ${PREFIX}/share/radiusniff

.include <bsd.port.mk>
