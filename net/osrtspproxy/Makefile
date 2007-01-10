# $OpenBSD: Makefile,v 1.1.1.1 2007/01/10 10:37:07 grunk Exp $

COMMENT=		"RTSP proxy reference implementation"

DISTNAME=		osrtspproxy_2_0
PKGNAME=		osrtspproxy-2.0
CATEGORIES=		net
HOMEPAGE=		http://www.rtsp.org/

MAINTAINER=		Alexander von Gernler <grunk@pestilenz.org>

# Real Networks license, permits modification and distribution
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://docs.real.com/docs/proxykit/

CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}"

NO_REGRESS=Yes

WANTLIB += c m pthread stdc++

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/osrtspproxy
	${INSTALL_PROGRAM} ${WRKSRC}/rtspproxy/rtspproxy ${PREFIX}/sbin
	tar -C ${WRKSRC}/rtspproxy/Manual -cf - . | \
	  tar -xf - -C ${PREFIX}/share/doc/osrtspproxy
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/osrtspproxy

.include <bsd.port.mk>
