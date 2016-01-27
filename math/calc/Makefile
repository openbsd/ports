# $OpenBSD: Makefile,v 1.23 2016/01/27 14:22:02 sthen Exp $

COMMENT=	C-style arbitrary precision calculator

DISTNAME=	calc-2.12.5.0
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	math

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://www.isthe.com/chongo/tech/comp/calc

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses readline

MASTER_SITES=	http://www.isthe.com/chongo/src/calc/ \
		${MASTER_SITE_SOURCEFORGE:=calc/}

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

MAKE_FILE=	Makefile.simple
TEST_TARGET=	check

post-install:
	rm ${PREFIX}/lib/lib*calc*.so* ${PREFIX}/bin/calc-static

.include <bsd.port.mk>
