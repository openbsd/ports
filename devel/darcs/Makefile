# $OpenBSD: Makefile,v 1.15 2006/07/30 21:02:32 alek Exp $

COMMENT=	"advanced revision control system written in Haskell"

DISTNAME=	darcs-1.0.8
CATEGORIES=	devel
HOMEPAGE=	http://www.darcs.net/
MASTER_SITES=	${HOMEPAGE}
MAINTAINER=	Jon Olsson <jon@vexed.se>

MODULES=	lang/ghc
MODGHC_RUNTIME=	No
LIB_DEPENDS=	curl.2::net/curl \
		gmp::devel/gmp

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix=${PREFIX} \
                --datadir=${PREFIX}/share \
                --libexecdir=${PREFIX}/libexec/darcs \
                --sysconfdir=${PREFIX}/share/darcs \
                --disable-mmap
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" CFLAGS=""

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile
INSTALL_TARGET= install installserver installdocs
MAKE_ENV+= 	DARCS=${WRKSRC}/darcs
REGRESS_TARGET= check

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto curses m ssl z

.include <bsd.port.mk>
