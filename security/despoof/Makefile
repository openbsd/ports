# $OpenBSD: Makefile,v 1.18 2019/07/12 20:49:01 sthen Exp $

COMMENT=	command-line anti-spoofing detection utility

DISTNAME=	despoof-0.9
REVISION=	3

CATEGORIES=	security
MASTER_SITES=	http://www.bindview.com/Resources/RAZOR/Files/ \
		${MASTER_SITE_PACKETSTORM:=UNIX/misc/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.bindview.com/Services/RAZOR/Utilities/Unix_Linux/despoof_readme.cfm

PERMIT_PACKAGE=	Yes

WANTLIB=		c pcap lib/libnet-1.0/net=0

LIB_DEPENDS=	net/libnet/1.0

MAKE_FLAGS+=	CC='${CC}' CFLAGS='${CFLAGS}' \
		DEFS='-I${LOCALBASE}/include/libnet-1.0 `libnet-config-1.0 --defines`' \
		LIBS='-L${LOCALBASE}/lib/libnet-1.0 -lnet -lpcap'

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/despoof ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/despoof
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/despoof
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/despoof

.include <bsd.port.mk>
