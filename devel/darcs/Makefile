# $OpenBSD: Makefile,v 1.5 2004/05/18 23:26:33 dons Exp $

COMMENT=	"advanced revision control system written in Haskell"

V=		0.9.20
DISTNAME=	darcs-${V}
CATEGORIES=	devel

HOMEPAGE=	http://www.abridgegame.org/darcs/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Don Stewart <dons@openbsd.org>

MODULES=	ghc
LIB_DEPENDS=	curl.2::net/curl

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--datadir=${PREFIX}/share --libexecdir=${PREFIX}/libexec
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
