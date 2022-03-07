COMMENT=	C-style arbitrary precision calculator

V=		2.14.0.14
DISTNAME=	calc-$V
EXTRACT_SUFX=	.tar.bz2

R=		0.0
SHARED_LIBS=	calc $R \
		custcalc $R

CATEGORIES=	math

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	http://www.isthe.com/chongo/tech/comp/calc

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c curses readline

MASTER_SITES=	https://github.com/lcn2/calc/releases/download/v$V/ \
		http://www.isthe.com/chongo/src/calc/

MAKE_FLAGS= Q="" \
	BINDIR='$${DESTDIR}${PREFIX}/bin' \
	LIBDIR='$${DESTDIR}${PREFIX}/lib' \
	INCDIR='$${DESTDIR}${PREFIX}/include' \
	MANDIR='$${DESTDIR}${PREFIX}/man/man1' \
	SHELL=/bin/sh \
	CALC_SHAREDIR='$${DESTDIR}${PREFIX}/share/calc' \
	LIB_EXT_VERSION=".so.${LIBcalc_VERSION}" \
	USE_READLINE='-DUSE_READLINE' \
	READLINE_LIB='-lreadline' \
	READLINE_EXTRAS='-lcurses' \
	ARCH_CFLAGS="" \
	LDCONFIG="" \
	LCC="${CC}" \
	CCOPT="${CFLAGS}" \
	target=OpenBSD

USE_GMAKE=	Yes
TEST_TARGET=	check

post-install:
	rm ${PREFIX}/lib/lib{cust,}calc.so

.include <bsd.port.mk>
