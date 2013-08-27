# $OpenBSD: Makefile,v 1.12 2013/08/27 21:53:10 bcallah Exp $

ONLY_FOR_ARCHS =	amd64 i386 mips64 mips64el powerpc sparc sparc64

COMMENT =		ANS Standard Forth interpreter and compiler

DISTNAME =		gforth-0.6.2
REVISION =		4
CATEGORIES =		lang

HOMEPAGE =		http://bernd-paysan.de/gforth.html

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_GNU:=gforth/}

WANTLIB =		c m

CONFIGURE_STYLE =	gnu
USE_GROFF =	Yes

CFLAGS +=		-Dunix
FAKE_FLAGS+=		DESTDIR="${WRKINST}"

KERNEL = 		kernl${WORDSIZE}${ENDIAN}.fi
SUBST_VARS +=		KERNEL

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

# Remove a bunch of unused and unneeded directories
post-install:
	find ${PREFIX}/share/gforth/arch/ -type d -empty | xargs rm -fr
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/gforth.el ${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
