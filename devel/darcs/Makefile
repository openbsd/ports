# $OpenBSD: Makefile,v 1.8 2004/10/09 10:06:17 sturm Exp $

COMMENT=	"advanced revision control system written in Haskell"

V=		0.9.23
DISTNAME=	darcs-${V}
CATEGORIES=	devel

HOMEPAGE=	http://www.abridgegame.org/darcs/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Don Stewart <dons@openbsd.org>

MODULES=	lang/ghc
LIB_DEPENDS=	curl.2::net/curl

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--datadir=${PREFIX}/share --libexecdir=${PREFIX}/libexec
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		CFLAGS=""

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile
INSTALL_TARGET= install installserver installdocs

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
