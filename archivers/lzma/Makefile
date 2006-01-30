# $OpenBSD: Makefile,v 1.1.1.1 2006/01/30 13:29:00 steven Exp $

COMMENT=		"LZMA utils - make usage of LZMA compression easy"

DISTNAME=		lzma-4.27.1
CATEGORIES=		archivers

HOMEPAGE=		http://tukaani.org/lzma/

MAINTAINER=		Steven Mestdagh <steven@openbsd.org>

# GPL + LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		c m stdc++

MAKE_FLAGS=		MYCC="${CC}" MYCXX="${CXX}"

REGRESS_TARGET=		test

.include <bsd.port.mk>
