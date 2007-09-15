# $OpenBSD: Makefile,v 1.3 2007/09/15 18:44:37 steven Exp $

COMMENT=	number theory-oriented computer algebra system

DISTNAME=	pari-2.1.6
EXTRACT_SUFX=	.tgz
CATEGORIES=	math

HOMEPAGE=	http://pari.math.u-bordeaux.fr/

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m ncurses readline c X11

MASTER_SITES=		${HOMEPAGE}/pub/pari/unix/

BUILD_DEPENDS=		::print/teTeX/base

USE_X11=		Yes

CONFIGURE_SCRIPT=	Configure
CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CFLAGS="${CFLAGS}"
CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/pari \
			--miscdir=${PREFIX}/share/pari \
			--prefix=${PREFIX} \
			--host=${ARCH}

REGRESS_TARGET=		dobench

post-install:
	mv ${PREFIX}/share/pari/doc ${PREFIX}/share/doc/pari
	mv ${PREFIX}/share/pari/[A-Z]* ${PREFIX}/share/doc/pari
	mv ${PREFIX}/share/pari/examples ${PREFIX}/share/examples/pari

.include <bsd.port.mk>
