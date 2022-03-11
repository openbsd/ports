ONLY_FOR_ARCHS =	amd64 i386 mips64 mips64el powerpc sparc64

USE_WXNEEDED =		Yes

COMMENT =		ANSI/200x Forth interpreter and compiler

V =			0.7.3
DISTNAME =		gforth-${V}
REVISION =		3
CATEGORIES =		lang
SHARED_LIBS +=		ffi			0.0 # 0.0

HOMEPAGE =		http://www.gnu.org/software/gforth/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_GNU:=gforth/}

WANTLIB += avcall c callback ffi ltdl m pthread

LIB_DEPENDS =		devel/ffcall \
			devel/libffi>=3.2.1p0 \
			devel/libtool,-ltdl

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CFLAGS +=		-Dunix
FAKE_FLAGS+=		DESTDIR="${WRKINST}"

KERNEL = 		kernl${WORDSIZE}${ENDIAN}.fi
SUBST_VARS +=		KERNEL V

# On i386 LLVM runs crashes/runs out of memory compiling engine.c
.if ${MACHINE_ARCH} == "i386"
PATCH_LIST =		patch-* patch_i386-*
.endif

# With base-clang on powerpc it either runs out of memory with i386 patches or
# -O1. Using -O0 makes preforth segfault. Use ports-gcc instead.
MODULES +=		gcc4
MODGCC4_ARCHS =		powerpc
MODGCC4_LANGS =		c

# We still need -O0 due to high memory usage though.
.if ${MACHINE_ARCH} == "powerpc"
CFLAGS +=		-O0
.endif

.include <bsd.port.arch.mk>

# The filename of the gForth kernel is based on the wordsize
# and the byte order of the system.
.if ${PROPERTIES:Mlp64}
WORDSIZE =	64
.else
WORDSIZE =	32
.endif

.if ${PROPERTIES:Mbe}
ENDIAN =	b
.else
ENDIAN =	l
.endif

pre-configure:
	sed -i "s,@CC@,& -I${LOCALBASE}/include -L${LOCALBASE}/lib," \
		${WRKSRC}/envos.fs.in

# Remove a bunch of unused and unneeded directories
post-install:
	find ${PREFIX}/share/gforth/arch/ -type d -empty | xargs rm -fr
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/gforth.el ${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
