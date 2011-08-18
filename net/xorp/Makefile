# $OpenBSD: Makefile,v 1.23 2011/08/18 19:22:31 sthen Exp $

COMMENT-main=	eXtensible Open Router Platform

VERSION=	1.6
DISTNAME=	xorp-${VERSION}
PKGNAME-main=	${DISTNAME}
REVISION-main=	0
CATEGORIES=	net
HOMEPAGE=	http://www.xorp.org/

BROKEN-sparc64=	ICE in route_table_fanout.cc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.xorp.org/releases/${VERSION}/ \
		http://www2.xorp.org/releases/${VERSION}/ \
		http://www3.xorp.org/releases/${VERSION}/

MULTI_PACKAGES=	-main
PREFIX=		${LOCALBASE}/xorp
PREFIX-main=	${LOCALBASE}

WANTLIB=	c crypto curses m pcap stdc++

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared

MODULES=	lang/python
MODPY_RUNDEP=	no

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-optimize --disable-debug
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config ${WRKSRC}/cli/libtecla

REGRESS_DEPENDS=	shells/bash

# some regression tests must be run as root
do-regress:
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python
	@cd ${WRKBUILD}; ${SUDO} ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${ALL_REGRESS_FLAGS} ${REGRESS_TARGET}

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${PREFIX-main}/share/examples/xorp
	cd ${WRKSRC}/rtrmgr/config; ${INSTALL_DATA} README *.boot \
	    ${WRKINST}/${PREFIX-main}/share/examples/xorp

.include <bsd.port.mk>
