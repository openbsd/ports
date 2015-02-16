# $OpenBSD: Makefile,v 1.14 2015/02/16 22:57:10 naddy Exp $

COMMENT=	number theory-oriented computer algebra system

DISTNAME=	pari-2.1.7
EXTRACT_SUFX=	.tgz
CATEGORIES=	math

HOMEPAGE=	http://pari.math.u-bordeaux.fr/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 c m ncurses readline

MASTER_SITES=		http://pari.math.u-bordeaux.fr/pub/pari/unix/OLD/2.1/

BUILD_DEPENDS=		print/texlive/base

CONFIGURE_SCRIPT=	Configure
CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CFLAGS="${CFLAGS}"
CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/pari \
			--miscdir=${PREFIX}/share/pari \
			--prefix=${PREFIX} \
			--host=${ARCH}

TEST_TARGET=		dobench

post-install:
	mv ${PREFIX}/share/pari/doc ${PREFIX}/share/doc/pari
	mv ${PREFIX}/share/pari/[A-Z]* ${PREFIX}/share/doc/pari
	mv ${PREFIX}/share/pari/examples ${PREFIX}/share/examples/pari

.include <bsd.port.mk>
