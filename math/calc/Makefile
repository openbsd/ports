# $OpenBSD: Makefile,v 1.10 2002/08/02 01:50:34 wcobb Exp $
#

COMMENT=	"C-style arbitrary precision calculator"

DISTNAME=	calc-2.11.5.8
CATEGORIES=	math
MASTER_SITES=	ftp://ftp.uu.net/pub/calc/ \
		ftp://reality.sgi.com/chongo/src/calc/ \
		${MASTER_SITE_SOURCEFORGE:=calc/}

# LGPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

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

FAKE_FLAGS=${MAKE_FLAGS}

# XXX workaround sparc64 gcc optimization bug
.if ${MACHINE_ARCH:Msparc64}
PATCH_LIST=	gcc-* patch-*
.endif

REGRESS_TARGET=	check

.include <bsd.port.mk>
