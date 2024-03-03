COMMENT=	translate PostScript/PDF graphics to other vector formats

DISTNAME=	pstoedit-4.00
SHARED_LIBS=	pstoedit 4.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.pstoedit.net/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=pstoedit/}

RUN_DEPENDS=	print/ghostscript/gnu
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	graphics/gd

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-libplot	\
		--without-emf	 	\
		--without-swf		\
		--without-magick	\
		--without-pptx		\
		--disable-docs

WANTLIB=	c ${COMPILER_LIBCXX} m

# c++14
COMPILER =	base-clang ports-gcc

CONFIGURE_ENV+=	CXXFLAGS="-I/usr/local/include"

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/pstoedit.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
