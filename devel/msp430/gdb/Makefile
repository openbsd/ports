# $OpenBSD: Makefile,v 1.11 2012/04/17 13:07:36 jasper Exp $

COMMENT=		GNU debugger for msp430

TOOL=			gdb
TOOL_V= 		7.2a
LTS_V=			20111205

GNU_TOOL=		Yes

MASTER_SITES=		${MASTER_SITE_GNU:=gdb/}

RUN_DEPENDS=		devel/msp430/binutils>=2.21.1a \
			devel/msp430/gcc>=4.6.3
BUILD_DEPENDS=		${RUN_DEPENDS}

WANTLIB=		c expat m ncurses z

CONFIGURE_ARGS+=	--disable-werror

WRKDIST=		${WRKDIR}/${DISTNAME:S/a$//}

# XXX: Tries to install the xml syscall files?
SEPARATE_BUILD= 	No

.include <bsd.port.mk>
