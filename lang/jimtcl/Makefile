# $OpenBSD: Makefile,v 1.4 2013/03/02 12:42:39 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		small footprint implementation of Tcl

DISTNAME=		jimtcl-0.72
REVISION=		2
SHARED_LIBS=		jim 0.0
CATEGORIES=		lang devel

HOMEPAGE=		http://jim.tcl.tk/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

# Upstream has no real releases, so it's a git checkout as of Sep 15 2011.
MASTER_SITES=		http://distfiles.nl/

WANTLIB=		c m

MODULES=		lang/tcl

RUN_DEPENDS=		${MODTCL_RUN_DEPENDS}
BUILD_DEPENDS=		${MODTCL_BUILD_DEPENDS} \
			textproc/asciidoc
REGRESS_DEPENDS=	devel/gmake

MAKE_ENV+=		SONAME_MAJOR=${LIBjim_VERSION:R} \
			SONAME_MINOR=${LIBjim_VERSION:E}

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-ext="nvp" \
			--full  # ipv6, math, utf8, binary, oo, tree

# Only regress requires gmake, so cheat a bit here instead of forcing it
# as a build dependency.
do-regress:
	cd ${WRKSRC} && ${SET_ENV} ${MAKE_ENV} ${LOCALBASE}/bin/gmake test

.include <bsd.port.mk>
