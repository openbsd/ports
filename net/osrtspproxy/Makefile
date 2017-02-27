# $OpenBSD: Makefile,v 1.5 2017/02/27 01:42:06 bluhm Exp $

COMMENT=		RTSP proxy reference implementation

DISTNAME=		osrtspproxy_2_0
PKGNAME=		osrtspproxy-2.0
REVISION=		1
CATEGORIES=		net
HOMEPAGE=		http://www.rtsp.org/

MAINTAINER=		Alexander Bluhm <bluhm@openbsd.org>

# Real Networks license, permits modification and distribution
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://docs.real.com/docs/proxykit/

CONFIGURE_STYLE=	simple

NO_TEST=Yes

WANTLIB += c m pthread stdc++

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/osrtspproxy
	${INSTALL_PROGRAM} ${WRKSRC}/rtspproxy/rtspproxy ${PREFIX}/sbin
	tar -C ${WRKSRC}/rtspproxy/Manual -cf - . | \
	  tar -xf - -C ${PREFIX}/share/doc/osrtspproxy
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/osrtspproxy

.include <bsd.port.mk>
