# $OpenBSD: Makefile,v 1.3 2000/04/12 20:43:21 espie Exp $
#

DISTNAME=	calc-2.11.1t3.0
CATEGORIES=	math
FAKE=No
MASTER_SITES=	ftp://ftp.uu.net/pub/calc/ \
		ftp://reality.sgi.com/chongo/src/calc/

#calc-2.11.1t3.0.tar.gz

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
FAKE=			Yes

HOMEPAGE=	http://reality.sgi.com/chongo/calc
MAINTAINER=	provos@openbsd.org
MAKE_FLAGS=BINDIR='$${DESTDIR}${PREFIX}/bin' \
	TOPDIR='$${DESTDIR}${PREFIX}/lib' \
	INCDIR='$${DESTDIR}${PREFIX}/include' \
	MANDIR='$${DESTDIR}${PREFIX}/man/man1' \
	USE_READLINE=-DUSE_READLINE \
	READLINE_LIB='-lreadline -lcurses' \
	CFLAGS='${CFLAGS} $${CCWARN} $${CCOPT} $${CCMISC}'

FAKE_FLAGS=${MAKE_FLAGS}
	

NO_CONFIGURE=	Yes

.include <bsd.port.mk>
