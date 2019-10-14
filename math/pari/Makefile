# $OpenBSD: Makefile,v 1.18 2019/10/14 01:07:08 daniel Exp $

COMMENT=	number theory-oriented computer algebra system

V=		2.1.7
DISTNAME=	pari-$V
REVISION=	2
EXTRACT_SUFX=	.tgz
CATEGORIES=	math

HOMEPAGE=	https://pari.math.u-bordeaux.fr/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 c m curses readline

MASTER_SITES=		http://pari.math.u-bordeaux.fr/pub/pari/unix/ \
			http://pari.math.u-bordeaux.fr/pub/pari/OLD/${V:R}/

BUILD_DEPENDS=		print/texlive/base

CONFIGURE_SCRIPT=	Configure
CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CFLAGS="${CFLAGS}"
CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/pari \
			--miscdir=${PREFIX}/share/pari \
			--prefix=${PREFIX} \
			--host=${ARCH}

TEST_TARGET=		dobench

.if ${MACHINE_ARCH} == i386
CFLAGS+=		-Wl,-znotext
.endif

post-install:
	mv ${PREFIX}/share/pari/doc ${PREFIX}/share/doc/pari
	mv ${PREFIX}/share/pari/[A-Z]* ${PREFIX}/share/doc/pari
	mv ${PREFIX}/share/pari/examples ${PREFIX}/share/examples/pari

.include <bsd.port.mk>
