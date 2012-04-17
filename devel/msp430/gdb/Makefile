# $OpenBSD: Makefile,v 1.8 2012/04/17 12:21:16 jasper Exp $

COMMENT=		GNU debugger for msp430

VERSION=		7.2a
R=			20111205
DISTNAME=		gdb-${VERSION}

MASTER_SITES=		${MASTER_SITE_GNU:=gdb/}
PATCHFILES=		msp430-gdb-${VERSION}-${R}.patch:0

RUN_DEPENDS=		devel/msp430/binutils>=2.21.1a \
			devel/msp430/gcc>=4.6.3
BUILD_DEPENDS=		${RUN_DEPENDS}

WANTLIB=		c expat m ncurses z

CONFIGURE_ARGS+=	--disable-werror

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/${DISTNAME:S/a$//}

.include <bsd.port.mk>
