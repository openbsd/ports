# $OpenBSD: Makefile,v 1.18 2016/01/28 18:34:08 jasper Exp $

ONLY_FOR_ARCHS =	amd64 i386 mips64 mips64el powerpc sparc sparc64

COMMENT =		ANSI/200x Forth interpreter and compiler

V =			0.7.3
DISTNAME =		gforth-${V}
REVISION =		1
CATEGORIES =		lang

HOMEPAGE =		http://www.gnu.org/software/gforth/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_GNU:=gforth/}

WANTLIB += avcall c callback ffi ltdl m pthread

LIB_DEPENDS =		devel/ffcall \
			devel/libffi>=3.2.1p0 \
			devel/libtool,-ltdl

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I/usr/local/include" \
			LDFLAGS="-L/usr/local/lib"

CFLAGS +=		-Dunix
FAKE_FLAGS+=		DESTDIR="${WRKINST}"

KERNEL = 		kernl${WORDSIZE}${ENDIAN}.fi
SUBST_VARS +=		KERNEL V

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
