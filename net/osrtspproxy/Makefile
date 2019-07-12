# $OpenBSD: Makefile,v 1.11 2019/07/12 20:48:35 sthen Exp $

COMMENT=		RTSP proxy reference implementation

DISTNAME=		osrtspproxy_2_0
PKGNAME=		osrtspproxy-2.0
REVISION=		4
CATEGORIES=		net
HOMEPAGE=		http://www.rtsp.org/

MAINTAINER=		Alexander Bluhm <bluhm@openbsd.org>

# Real Networks license, permits modification and distribution
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://docs.real.com/docs/proxykit/

CONFIGURE_STYLE=	simple

NO_TEST=Yes

WANTLIB += c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/osrtspproxy
	${INSTALL_PROGRAM} ${WRKSRC}/rtspproxy/rtspproxy ${PREFIX}/sbin
	tar -C ${WRKSRC}/rtspproxy/Manual -cf - . | \
	  tar -xf - -C ${PREFIX}/share/doc/osrtspproxy
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/osrtspproxy

.include <bsd.port.mk>
