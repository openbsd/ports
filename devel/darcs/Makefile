# $OpenBSD: Makefile,v 1.3 2003/08/03 18:16:46 avsm Exp $

COMMENT=	"advanced revision control system written in Haskell"

V=		0.9.12
DISTNAME=	darcs-${V}
CATEGORIES=	devel

HOMEPAGE=	http://www.abridgegame.org/darcs/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

MODULES=	ghc
LIB_DEPENDS=	curl.2::net/curl
BUILD_DEPENDS+=	latex::print/teTeX/base

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
