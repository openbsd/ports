# $OpenBSD: Makefile,v 1.8 2003/11/03 00:49:29 margarida Exp $

COMMENT=		"lightweight HTTP/SSL proxy"

VERSION=		1.6.2
DISTNAME=		tinyproxy-${VERSION}
CATEGORIES=		www net

HOMEPAGE=		http://tinyproxy.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tinyproxy/}

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		gcc3
MODGCC3_ARCHES=		sparc64

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
