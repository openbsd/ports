# $OpenBSD: Makefile,v 1.25 2009/10/04 21:16:17 kili Exp $

COMMENT=	advanced revision control system written in Haskell

DISTNAME=	darcs-2.2.0
PKGNAME=	${DISTNAME}p0

CATEGORIES=	devel
HOMEPAGE=	http://www.darcs.net/
MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c curses crypto idn m pthread ssl z
MODULES=	lang/ghc
MODGHC_RUNTIME=	No
LIB_DEPENDS=	curl.>=2::net/curl \
		gmp::devel/gmp
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--datadir=${PREFIX}/share \
		--libexecdir=${PREFIX}/libexec/darcs \
		--mandir=${PREFIX}/man \
		--sysconfdir=${PREFIX}/share/darcs \
		--without-manual
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" CFLAGS="" \
		HOME=/nonexistent \
		AWK=/usr/bin/awk DIFF=/usr/bin/diff GREP=/usr/bin/grep

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile
INSTALL_TARGET=	install installserver install-html install-examples
MAKE_ENV+= 	DARCS=${WRKSRC}/darcs
MAKE_FLAGS+=	VERBOSE=Yes
REGRESS_TARGET=	check
REGRESS_DEPENDS=::shells/bash

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
