# $OpenBSD: Makefile,v 1.12 2005/02/07 19:01:50 pvalchev Exp $

COMMENT=		"lightweight HTTP/SSL proxy"

VERSION=		1.6.3
DISTNAME=		tinyproxy-${VERSION}
CATEGORIES=		www net

HOMEPAGE=		http://tinyproxy.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tinyproxy/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--with-config=${SYSCONFDIR}/tinyproxy/tinyproxy.conf
MAKE_FLAGS=		CFLAGS="${CFLAGS}"

DOCS=			HT* RFC_INFO filter-howto.txt *.html

REGRESS_TARGET=		check

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/tinyproxy ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/doc/tinyproxy.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tinyproxy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tinyproxy
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${DOCS} \
  	  ${PREFIX}/share/doc/tinyproxy
	cd ${WRKSRC}/doc && ${INSTALL_DATA} tinyproxy.conf \
	  ${PREFIX}/share/examples/tinyproxy

.include <bsd.port.mk>
