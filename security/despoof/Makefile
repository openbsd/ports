# $OpenBSD: Makefile,v 1.2 2001/02/26 04:02:35 brad Exp $

DISTNAME=	despoof-0.9
CATEGORIES=	security
NEED_VERSION=	1.348
MASTER_SITES=	http://razor.bindview.com/tools/files/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://razor.bindview.com/tools/desc/despoof_readme.html

MAINTAINER=	Brian Caswell <bmc@mitre.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	net::net/libnet

MAKE_FLAGS+=	CC='${CC}' CFLAGS='${CFLAGS}' \
		DEFS='-I${LOCALBASE}/include `libnet-config --defines`' \
		LIBS='-L${LOCALBASE}/lib -lnet -lpcap'

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/despoof ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/despoof
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/despoof
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/despoof

.include <bsd.port.mk>
