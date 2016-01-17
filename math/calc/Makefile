# $OpenBSD: Makefile,v 1.22 2016/01/17 22:35:56 sthen Exp $

COMMENT=	C-style arbitrary precision calculator

DISTNAME=	calc-2.12.2
CATEGORIES=	math

HOMEPAGE=	http://www.isthe.com/chongo/tech/comp/calc

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses readline

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=calc/}

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
