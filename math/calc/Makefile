# $OpenBSD: Makefile,v 1.44 2021/02/14 15:00:29 sthen Exp $

COMMENT=	C-style arbitrary precision calculator

GH_ACCOUNT=	lcn2
GH_PROJECT=	calc
GH_TAGNAME=	2.12.8.0

R=		0.0
SHARED_LIBS=	calc $R \
		custcalc $R

CATEGORIES=	math

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	http://www.isthe.com/chongo/tech/comp/calc

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c curses readline

MAKE_FLAGS= Q="" \
	BINDIR='$${DESTDIR}${PREFIX}/bin' \
	LIBDIR='$${DESTDIR}${PREFIX}/lib' \
	INCDIR='$${DESTDIR}${PREFIX}/include' \
	MANDIR='$${DESTDIR}${PREFIX}/man/man1' \
	CALC_SHAREDIR='$${DESTDIR}${PREFIX}/share/calc' \
	LIB_EXT_VERSION=".so.${LIBcalc_VERSION}" \
	USE_READLINE='-DUSE_READLINE' \
	READLINE_LIB='-lreadline -lcurses' \
	ARCH_CFLAGS="" \
	LDCONFIG="" \
	LCC="${CC}" \
	CCOPT="${CFLAGS}" \
	target=OpenBSD

MAKE_FILE=	Makefile.ship
USE_GMAKE=	Yes
TEST_TARGET=	check

post-install:
	rm ${PREFIX}/lib/lib{cust,}calc.so

.include <bsd.port.mk>
