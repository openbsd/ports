# $OpenBSD: Makefile,v 1.6 2013/03/11 11:20:27 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		small footprint implementation of Tcl

DISTNAME=		jimtcl-0.73
SHARED_LIBS=		jim 1.0
CATEGORIES=		lang devel

HOMEPAGE=		http://jim.tcl.tk/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

# Upstream has no real releases, so it's a git tag
MASTER_SITES=		http://distfiles.nl/

WANTLIB=		c m

MODULES=		lang/tcl

RUN_DEPENDS=		${MODTCL_RUN_DEPENDS}
BUILD_DEPENDS=		${MODTCL_BUILD_DEPENDS} \
			textproc/asciidoc
TEST_DEPENDS=	devel/gmake

MAKE_ENV+=		SONAME_MAJOR=${LIBjim_VERSION:R} \
			SONAME_MINOR=${LIBjim_VERSION:E}

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--full  # ipv6, math, utf8, binary, oo, tree

# Only test requires gmake, so cheat a bit here instead of forcing it
# as a build dependency.
do-test:
	cd ${WRKSRC} && ${SET_ENV} ${MAKE_ENV} ${LOCALBASE}/bin/gmake test

.include <bsd.port.mk>
