# $OpenBSD: Makefile,v 1.4 2002/11/22 02:37:37 margarida Exp $

COMMENT=		"lightweight HTTP/SSL proxy"

VERSION=		1.5.1
DISTNAME=		tinyproxy-${VERSION}
CATEGORIES=		www

HOMEPAGE=		http://tinyproxy.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tinyproxy/}

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	simple

TP_CONFIG=		${SYSCONFDIR}/tinyproxy

CONFIGURE_ARGS+=	--with-config=${TP_CONFIG}/tinyproxy.conf

SUBST_VARS=		TP_CONFIG

DOCS=			HTTP_ERROR_CODES RFC_INFO

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
