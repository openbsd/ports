# $OpenBSD: Makefile,v 1.7 2019/07/12 20:47:17 sthen Exp $

BROKEN-i386 =	needs fixing for LLD

# May also support aarch64 and arm?
ONLY_FOR_ARCHS =	amd64 i386

V =		1.05.0
COMMENT =	open-source, multi-platform BASIC compiler
DISTNAME =	FreeBASIC-${V}-source-openbsd
PKGNAME =	freebasic-${V}
REVISION =	1
CATEGORIES =	lang

HOMEPAGE =	https://www.freebasic.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Compiler: GPLv2+
# Runtime and Graphics libs: LGPLv2+ with static linking exception
PERMIT_PACKAGE =	Yes

WANTLIB += c m ncurses pthread

# Can't use upstream; no OpenBSD bootstrap.
MASTER_SITES =	https://devio.us/~bcallah/source/

# Code uses GNU C extensions clang doesn't like.
COMPILER =	ports-gcc
COMPILER_LANGS =	c

# Thus says upstream:
# The runtime library uses libffi, in building and running.
# And your BASIC programs will be linked against it.
BUILD_DEPENDS =	devel/libffi

# Use ports-gcc as the backend runtime compiler, since we know FreeBASIC
# will generate C files with GNU C extensions that clang doesn't like.
RUN_DEPENDS =	devel/libffi \
		lang/gcc/${MODGCC4_VERSION},-main # Something else?

USE_GMAKE =	Yes
MAKE_FILE =	makefile
ALL_TARGET =	bootstrap
MAKE_FLAGS =	V=1 CC="${CC}" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include"

FAKE_FLAGS =	prefix="${DESTDIR}${PREFIX}"

# A work in progress...
NO_TEST =	Yes

.if ${MACHINE_ARCH:Mamd64}
A = x86_64
.else
A = x86
.endif

SUBST_VARS +=	A

pre-configure:
	sed -i 's,$${TRUEPREFIX},${TRUEPREFIX},g' \
		${WRKSRC}/bootstrap/openbsd-${A}/fbc.c
	sed -i 's,$${TRUEPREFIX},${TRUEPREFIX},g' \
		${WRKSRC}/src/compiler/fbc.bas
	grep -Rl '__FB_LINUX__' ${WRKSRC}/inc |\
		xargs sed -i 's,__FB_LINUX__,__FB_OPENBSD__,g'

.include <bsd.port.mk>
