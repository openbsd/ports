# $OpenBSD: Makefile,v 1.17 2008/01/04 17:48:36 espie Exp $

COMMENT=	C-style arbitrary precision calculator

DISTNAME=	calc-2.11.7
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=calc/} \
		ftp://ftp.uu.net/pub/calc/ \
		ftp://reality.sgi.com/chongo/src/calc/

# LGPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		c curses readline

HOMEPAGE=	http://www.isthe.com/chongo/tech/comp/calc
MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

MAKE_FLAGS=\
	BINDIR='$${DESTDIR}${PREFIX}/bin' \
	LIBDIR='$${DESTDIR}${PREFIX}/lib' \
	INCDIR='$${DESTDIR}${PREFIX}/include' \
	MANDIR='$${DESTDIR}${PREFIX}/man/man1' \
	CALC_SHAREDIR='$${DESTDIR}${PREFIX}/share/calc' \
	USE_READLINE='-DUSE_READLINE' \
	READLINE_LIB='-lreadline -lcurses' \
	LCC=${CC} \
	CFLAGS='${CFLAGS} -DCALC_SRC $${CCWARN}'

REGRESS_TARGET=	check

.include <bsd.port.mk>
