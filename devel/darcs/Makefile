# $OpenBSD: Makefile,v 1.1.1.1 2003/07/20 03:55:46 avsm Exp $

COMMENT=	"advanced revision control system written in Haskell"

V=		0.9.11
DISTNAME=	darcs-${V}
CATEGORIES=	devel

HOMEPAGE=	http://www.abridgegame.org/darcs/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# ghc only works on i386 at the moment
ONLY_FOR_ARCHS=	i386

LIB_DEPENDS=	curl.2::net/curl
BUILD_DEPENDS=	ghc::lang/ghc \
		latex::print/teTeX/base

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--datadir=${PREFIX}/share
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		CFLAGS=""

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile
INSTALL_TARGET= install installserver

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
