# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:06 sthen Exp $

COMMENT=	passive OS fingerprinting tool

V=		3.09b
DISTNAME=	p0f-$V
PKGNAME=	p0f3-$V
EXTRACT_SUFX=	.tgz
CATEGORIES=     security net

HOMEPAGE=	http://lcamtuf.coredump.cx/p0f.shtml

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c pcap

MASTER_SITES=	http://lcamtuf.coredump.cx/p0f3/releases/

MAKE_FLAGS=	CC="${CC}"

BUILD_DEPENDS=	shells/bash

NO_TEST=	Yes

post-extract:
	perl -pi -e 's,^#!/bin/bash,#!${LOCALBASE}/bin/bash,' ${WRKSRC}/build.sh
	perl -pi -e 's,^/etc/,${SYSCONFDIR}/,g' ${WRKSRC}/config.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/p0f ${PREFIX}/sbin/p0f3
	${INSTALL_DATA_DIR} ${PREFIX}/share/{examples,doc}/p0f3
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/p0f3/
	${INSTALL_DATA} ${WRKSRC}/p0f.fp ${PREFIX}/share/examples/p0f3/p0f3.fp

.include <bsd.port.mk>
