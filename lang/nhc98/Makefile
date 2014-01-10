# $OpenBSD: Makefile,v 1.17 2014/01/10 20:50:39 sthen Exp $

COMMENT=	portable Haskell compiler

# not for 64 bits, broken on ppc
NOT_FOR_ARCHS=	${LP64_ARCHS} powerpc
BROKEN-hppa=	Segfault during build since the PIE switch
BROKEN=		http://marc.info/?l=openbsd-ports&m=138867760408976&w=2

V=		1.22
DISTNAME=	nhc98-$V
CATEGORIES=	lang
HOMEPAGE=	http://www.haskell.org/nhc98/
MAINTAINER=	Matthias Kilian <kili@openbsd.org>

MASTER_SITES=	${HOMEPAGE}

DISTFILES=	nhc98src-$V.tar.gz

# BSDish
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

USE_GMAKE=		Yes
USE_GROFF =		Yes
MAKE_FLAGS=		OPT="${CFLAGS}"
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--prefix=${PREFIX} \
			--docdir=${PREFIX}/share/doc/nhc98 +docs

# it does compile with ghc-6.6.1, but about 20 testcases seem to run
# worse than with a cc-built nhc, so still stick with cc.
CONFIGURE_ARGS+=--buildwith=cc

TEST_TARGET=	test

.include <bsd.port.mk>
