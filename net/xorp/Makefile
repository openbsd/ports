# $OpenBSD: Makefile,v 1.30 2013/10/31 21:12:13 sthen Exp $

COMMENT-main=	eXtensible Open Router Platform

VERSION=	1.6
DISTNAME=	xorp-${VERSION}
PKGNAME-main=	${DISTNAME}
REVISION-main=	4
CATEGORIES=	net
HOMEPAGE=	http://www.xorp.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.xorp.org/releases/${VERSION}/ \
		http://www2.xorp.org/releases/${VERSION}/ \
		http://www3.xorp.org/releases/${VERSION}/

MULTI_PACKAGES=	-main
PREFIX=		${LOCALBASE}/xorp
PREFIX-main=	${LOCALBASE}

WANTLIB=	c crypto curses m pcap stdc++

USE_GMAKE=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared

MODULES=	lang/python
MODPY_RUNDEP=	no

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-optimize --disable-debug
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config ${WRKSRC}/cli/libtecla

TEST_DEPENDS=	shells/bash

# some regression tests must be run as root
do-test:
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python
	@cd ${WRKBUILD}; ${SUDO} ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${ALL_TEST_FLAGS} ${TEST_TARGET}

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${PREFIX-main}/share/examples/xorp
	cd ${WRKSRC}/rtrmgr/config; ${INSTALL_DATA} README *.boot \
	    ${WRKINST}/${PREFIX-main}/share/examples/xorp

.include <bsd.port.mk>
