# $OpenBSD: Makefile,v 1.16 2019/07/12 20:48:28 sthen Exp $

COMMENT=		minimalist IRC client

DISTNAME=		ii-1.7
REVISION=		3
CATEGORIES=		net
FIX_EXTRACT_PERMISSIONS=Yes


HOMEPAGE=		http://tools.suckless.org/ii
MASTER_SITES=		http://dl.suckless.org/tools/
MASTER_SITES0=		${HOMEPAGE}/patches/

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

# MIT/X
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB=		c

NO_TEST=		Yes

FLAVORS=		ucspi
FLAVOR?=

# patches from http://tools.suckless.org/ii/patches
PATCH_DIST_STRIP=	-p1

.if ${FLAVOR} == "ucspi"
# adds unix client server programming interface support
PATCHFILES+=		${DISTNAME}-ucspi.diff:0
PATCH_LIST=		patch-* ucspipatch-*
RUN_DEPENDS=		net/ucspi-tools
.else
# adds ssl encryption support
PATCHFILES+=		${DISTNAME}-ssl.diff:0
PATCH_LIST=		patch-* sslpatch-*
WANTLIB+=		crypto ssl
.endif

SUPDISTFILES+=		${DISTNAME}-ssl.diff:0
SUPDISTFILES+=		${DISTNAME}-ucspi.diff:0

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ii ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/ii.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ii
	${INSTALL_DATA} ${WRKSRC}/{README,FAQ,query.sh} ${PREFIX}/share/doc/ii

.include <bsd.port.mk>
