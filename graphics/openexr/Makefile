# $OpenBSD: Makefile,v 1.33 2019/08/18 20:43:27 ajacoutot Exp $

COMMENT-main=		high dynamic range image format
COMMENT-tools=		image viewing tools for OpenEXR
COMMENT-doc=		developer documentation for OpenEXR

V=			2.3.0
DISTNAME=		openexr-${V}

PKGNAME-main=		OpenEXR-${V}
PKGNAME-tools=		OpenEXR-tools-${V}
PKGNAME-doc=		OpenEXR-doc-${V}

SHARED_LIBS +=	IlmImf               7.0      # 24.0
SHARED_LIBS +=	IlmImfUtil           2.0      # 24.0

CATEGORIES=		graphics

HOMEPAGE=		http://www.openexr.com/

# Modified BSD license
# `name of ILM not to be used for advertizing without written agreement'
PERMIT_PACKAGE=		Yes

MASTER_SITES=		https://github.com/openexr/openexr/releases/download/v${V}/

MULTI_PACKAGES= 	-main -tools -doc

WANTLIB-main=		m z ${COMPILER_LIBCXX} Half Iex IexMath Imath IlmThread pthread
LIB_DEPENDS-main=	graphics/ilmbase>=${V}

WANTLIB-tools=		${WANTLIB-main} c m pthread ${COMPILER_LIBCXX} IlmImf
LIB_DEPENDS-tools=	${LIB_DEPENDS-main} \
			graphics/openexr

PKG_ARCH-doc=		*

COMPILER=		base-clang ports-gcc base-gcc

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-namespaceversioning

DOCDIR= 		${PREFIX}/share/doc/OpenEXR
FAKE_FLAGS=		docdir=${DOCDIR}

#post-install:
#	${INSTALL_DATA} ${WRKSRC}/doc/*.pdf ${DOCDIR}

.include <bsd.port.mk>
