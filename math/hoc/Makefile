# $OpenBSD: Makefile,v 1.30 2019/07/12 20:47:41 sthen Exp $

COMMENT=	from Kernighan & Pike: High Order Calculator

GH_ACCOUNT =	IanDarwin
GH_PROJECT =	hoc
GH_TAGNAME =	v1.1
REVISION=	1

CATEGORIES=	math

MAINTAINER=	Ian Darwin <ian@openbsd.org>

HOMEPAGE=	https://www.cs.princeton.edu/~bwk/btl.mirror/new/

# BSD-like License from original distfile: "Permission to use, copy,
# modify, and distribute this software... for any purpose and without
# fee.. provided that the copyright notice appear in all copies..."
PERMIT_PACKAGE=	Yes
WANTLIB=		c m

ALL_TARGET=	hoc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hoc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hoc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
