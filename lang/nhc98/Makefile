# $OpenBSD: Makefile,v 1.8 2007/06/29 11:06:25 kili Exp $
# $NetBSD: Makefile,v 1.29 2004/03/26 21:19:53 wiz Exp $

COMMENT=	"portable Haskell compiler"

# not for 64 bits, broken on ppc
NOT_FOR_ARCHS=	${LP64_ARCHS} powerpc

V=		1.18
DISTNAME=	nhc98-${V}
CATEGORIES=	lang
HOMEPAGE=	http://www.haskell.org/nhc98/
MAINTAINER=	Matthias Kilian <kili@openbsd.org>

MASTER_SITES=	http://www.cs.york.ac.uk/fp/nhc98/

DISTFILES=	nhc98src-$V.tar.gz nhc98-$V-library-interfaces.tar.gz

# BSDish
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

USE_GMAKE=		Yes
MAKE_FLAGS=		OPT="${CFLAGS}"
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--prefix=${PREFIX} \
			--docdir=${PREFIX}/share/doc/nhc98 +docs

# ghc build disabled; this version of nhc doesn't compile with ghc-6.6.1
# on i386, so we just build it with cc on all supported archs.
CONFIGURE_ARGS+=--buildwith=cc

REGRESS_TARGET=	test

post-extract:
	find ${WRKSRC} -name CVS -type d | xargs rm -rf

.include <bsd.port.mk>
