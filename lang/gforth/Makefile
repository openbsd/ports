# $OpenBSD: Makefile,v 1.4 2009/11/17 01:04:43 kurt Exp $

ONLY_FOR_ARCHS =	amd64 i386 powerpc sparc sparc64

COMMENT =		ANS Standard Forth interpreter and compiler

DISTNAME =		gforth-0.6.2
PKGNAME =		${DISTNAME}p1
CATEGORIES =		lang

HOMEPAGE =		http://www.jwdt.com/~paysan/gforth.html

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_GNU:=gforth/}

WANTLIB =		c m

CONFIGURE_STYLE =	gnu

CFLAGS +=		-Dunix
FAKE_FLAGS+=		DESTDIR="${WRKINST}"

KERNEL = 		kernl${WORDSIZE}${ENDIAN}.fi
SUBST_VARS +=		KERNEL

# Remove a bunch of unused and unneeded directories
post-install:
	find ${PREFIX}/share/gforth/arch/ -type d -empty | xargs rm -fr
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/gforth.el ${PREFIX}/share/emacs/site-lisp


.include <bsd.port.mk>

# The filename of the gForth kernel is based on the wordsize
# and the byte order of the system.
.for m in ${MACHINE_ARCH}
.if ${LP64_ARCHS:L:M$m}
WORDSIZE =	64
.else
WORDSIZE =	32
.endif
.endfor

.if ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "mips64" \
	|| ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "sh" \
	|| ${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "sparc64"
ENDIAN =	b
.else
ENDIAN =	l
.endif
