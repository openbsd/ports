# $OpenBSD: Makefile,v 1.19 2019/07/12 20:48:32 sthen Exp $

COMMENT=		gnutella client with an easy to use interface

DISTNAME=		mutella-0.4.5
REVISION=		3
CATEGORIES=		net

HOMEPAGE=		http://mutella.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes
WANTLIB=		c curses m pthread readline ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mutella/}

SEPARATE_BUILD=		Yes

CONFIGURE_STYLE=	gnu


.include <bsd.port.mk>

# this warning is dubious for now
.if ${PROPERTIES:Mclang}
CXXFLAGS += -Wno-undefined-var-template
.endif
