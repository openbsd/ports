# $OpenBSD: Makefile,v 1.6 2000/10/22 15:42:36 espie Exp $
#

DISTNAME=	calc-2.11.1t3.0
CATEGORIES=	math
MASTER_SITES=	ftp://ftp.uu.net/pub/calc/ \
		ftp://reality.sgi.com/chongo/src/calc/

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

HOMEPAGE=	http://reality.sgi.com/chongo/calc
MAINTAINER=	Niels Provos <provos@openbsd.org>
MAKE_FLAGS=BINDIR='$${DESTDIR}${PREFIX}/bin' \
	TOPDIR='$${DESTDIR}${PREFIX}/lib' \
	INCDIR='$${DESTDIR}${PREFIX}/include' \
	MANDIR='$${DESTDIR}${PREFIX}/man/man1' \
	USE_READLINE=-DUSE_READLINE \
	READLINE_LIB='-lreadline -lcurses' \
	CFLAGS='${CFLAGS} $${CCWARN} $${CCOPT} $${CCMISC}'

FAKE_FLAGS=${MAKE_FLAGS}
	

NO_BUILD=	Yes

.include <bsd.port.mk>
