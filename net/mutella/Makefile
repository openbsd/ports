# $OpenBSD: Makefile,v 1.17 2018/10/24 14:28:09 sthen Exp $

COMMENT=		gnutella client with an easy to use interface

DISTNAME=		mutella-0.4.5
REVISION=		2
CATEGORIES=		net

HOMEPAGE=		http://mutella.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
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
