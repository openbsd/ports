COMMENT=	curses GDB interface

DISTNAME=	cgdb-0.8.0

CATEGORIES=	devel

HOMEPAGE=	https://cgdb.github.io/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} c curses ereadline m util

COMPILER =	base-clang ports-gcc

MASTER_SITES=	https://cgdb.me/files/

LIB_DEPENDS=	devel/readline>=6.1p2
RUN_DEPENDS=	devel/gdb
TEST_DEPENDS=	devel/dejagnu

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=  autoconf
AUTOCONF_VERSION= 2.69

CONFIGURE_ARGS+= --with-readline=yes
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include/ereadline -I${LOCALBASE}/include"

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
# Avoid clash between compiler's builtin macro and identifier in source code.
CFLAGS+=	-Umips
.endif

TEST_ENV +=	TERM=xterm

.include <bsd.port.mk>
