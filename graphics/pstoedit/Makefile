# $OpenBSD: Makefile,v 1.32 2020/03/12 22:01:31 cwen Exp $

COMMENT=	translate PostScript/PDF graphics to other vector formats

DISTNAME=	pstoedit-3.75
REVISION=	0
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

# c++14
COMPILER =	base-clang ports-gcc

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/pstoedit.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
