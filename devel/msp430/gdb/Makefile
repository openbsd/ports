# $OpenBSD: Makefile,v 1.7 2011/11/11 18:38:17 jasper Exp $

COMMENT=		GNU debugger for msp430

VERSION=		7.2
R=			20110103
DISTNAME=		gdb-${VERSION}
REVISION=		1

MASTER_SITES=		${MASTER_SITE_GNU:=gdb/}
PATCHFILES=		msp430-gdb-${VERSION}-${R}.patch:0

RUN_DEPENDS=		devel/msp430/binutils>=2.21.1 \
			devel/msp430/gcc>=4.5.3
BUILD_DEPENDS=		${RUN_DEPENDS}

WANTLIB=		c expat m ncurses z

CONFIGURE_ARGS+=	--disable-werror

NO_REGRESS=		Yes

.include <bsd.port.mk>
