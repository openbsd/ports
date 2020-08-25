# $OpenBSD: Makefile,v 1.12 2020/08/25 13:28:19 visa Exp $

COMMENT=	curses GDB interface

DISTNAME=	cgdb-0.7.1

CATEGORIES=	devel

HOMEPAGE=	https://cgdb.github.io/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} c curses ereadline m util

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	https://cgdb.me/files/

LIB_DEPENDS=	devel/readline>=6.1p2
RUN_DEPENDS=	devel/gdb
TEST_DEPENDS=	devel/dejagnu

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--with-readline=yes
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include/ereadline -I${LOCALBASE}/include"

AUTOCONF_VERSION=	2.69

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
# Avoid clash between compiler's builtin macro and identifier in source code.
CFLAGS+=		-Umips
.endif

.include <bsd.port.mk>
