# $OpenBSD: Makefile,v 1.10 2006/07/13 17:22:23 steven Exp $

COMMENT=	"command-line anti-spoofing detection utility"

DISTNAME=	despoof-0.9
PKGNAME=	${DISTNAME}p1

CATEGORIES=	security
MASTER_SITES=	http://www.bindview.com/Resources/RAZOR/Files/ \
		${MASTER_SITE_PACKETSTORM:=UNIX/misc/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.bindview.com/Services/RAZOR/Utilities/Unix_Linux/despoof_readme.cfm

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

LIB_DEPENDS=	lib/libnet-1.0/net.=0:libnet-1.0*:net/libnet/1.0

MAKE_FLAGS+=	CC='${CC}' CFLAGS='${CFLAGS}' \
		DEFS='-I${LOCALBASE}/include/libnet-1.0 `libnet-config-1.0 --defines`' \
		LIBS='-L${LOCALBASE}/lib/libnet-1.0 -lnet -lpcap'

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/despoof ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/despoof
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/despoof
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/despoof

.include <bsd.port.mk>
