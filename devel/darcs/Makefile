# $OpenBSD: Makefile,v 1.20 2007/06/21 15:13:45 kili Exp $

COMMENT=	"advanced revision control system written in Haskell"

DISTNAME=	darcs-1.0.9
PKGNAME=	${DISTNAME}p0

CATEGORIES=	devel
HOMEPAGE=	http://www.darcs.net/
MASTER_SITES=	${HOMEPAGE}
MAINTAINER=	Jon Olsson <jon@abc.se>

MODULES=	lang/ghc
MODGHC_RUNTIME=	No
LIB_DEPENDS=	curl.>=2::net/curl \
		gmp::devel/gmp

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--datadir=${PREFIX}/share \
		--libexecdir=${PREFIX}/libexec/darcs \
		--mandir=${PREFIX}/man \
		--sysconfdir=${PREFIX}/share/darcs \
		--disable-mmap \
		--without-docs
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" CFLAGS="" \
		GREP=/usr/bin/grep AWK=/usr/bin/awk

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile
INSTALL_TARGET=	install installserver installdocs
MAKE_ENV+= 	DARCS=${WRKSRC}/darcs
REGRESS_TARGET=	check

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto curses idn m ssl z

.include <bsd.port.mk>
