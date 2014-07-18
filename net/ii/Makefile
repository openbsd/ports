# $OpenBSD: Makefile,v 1.12 2014/07/18 01:23:04 gsoares Exp $

COMMENT=		minimalist IRC client

DISTNAME=		ii-1.7
REVISION=		1
CATEGORIES=		net

# adds ssl encryption support
# patch from http://tools.suckless.org/ii/patches
PATCHFILES+=		${DISTNAME}-ssl.diff:0
PATCH_DIST_STRIP=	-p1

HOMEPAGE=		http://tools.suckless.org/ii
MASTER_SITES=		http://dl.suckless.org/tools/
MASTER_SITES0=		${HOMEPAGE}/patches/

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto ssl

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ii ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/ii.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ii
	${INSTALL_DATA} ${WRKSRC}/{README,FAQ,query.sh} ${PREFIX}/share/doc/ii

.include <bsd.port.mk>
