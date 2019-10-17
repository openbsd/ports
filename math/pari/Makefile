# $OpenBSD: Makefile,v 1.19 2019/10/17 01:09:22 daniel Exp $

COMMENT=	number theory-oriented computer algebra system

V=		2.11.2
DISTNAME=	pari-$V
CATEGORIES=	math

HOMEPAGE=	https://pari.math.u-bordeaux.fr/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB +=		X11 c gmp m readline

MASTER_SITES=		http://pari.math.u-bordeaux.fr/pub/pari/unix/ \
			http://pari.math.u-bordeaux.fr/pub/pari/OLD/${V:R}/

BUILD_DEPENDS=		print/texlive/base
LIB_DEPENDS=		devel/gmp

USE_GMAKE=		Yes

CONFIGURE_SCRIPT=	Configure
CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CFLAGS="${CFLAGS}"
CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/pari \
			--mandir=${PREFIX}/man/man1 \
			--prefix=${PREFIX} \
			--with-gmp=${PREFIX}

TEST_TARGET=		dobench

.if ${MACHINE_ARCH} == i386
CFLAGS+=		-Wl,-znotext
.endif

post-install:
	mv ${PREFIX}/share/pari/doc ${PREFIX}/share/doc/pari
	mv ${PREFIX}/share/pari/[A-Z]* ${PREFIX}/share/doc/pari
	mv ${PREFIX}/share/pari/examples ${PREFIX}/share/examples/pari

.include <bsd.port.mk>
