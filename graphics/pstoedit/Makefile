# $OpenBSD: Makefile,v 1.30 2019/07/12 20:47:08 sthen Exp $

COMMENT=	translate PostScript/PDF graphics to other vector formats

DISTNAME=	pstoedit-3.74
SHARED_LIBS=	pstoedit 3.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.pstoedit.net/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pstoedit/}

RUN_DEPENDS=	print/ghostscript/gnu
BUILD_DEPENDS=	${RUN_DEPENDS}

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-libplot	\
		--without-emf	 	\
		--without-swf		\
		--without-magick
WANTLIB=	c ${COMPILER_LIBCXX} m

# c++11
COMPILER =	base-clang ports-gcc base-gcc

# This should be reviewed once moving to ports-gcc>=8
CXXFLAGS +=	-std=c++11

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/pstoedit.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
