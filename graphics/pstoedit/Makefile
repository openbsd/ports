# $OpenBSD: Makefile,v 1.26 2018/10/24 14:28:06 sthen Exp $

COMMENT=	translate PostScript/PDF graphics to other vector formats

DISTNAME=	pstoedit-3.71
SHARED_LIBS=	pstoedit 3.0
CATEGORIES=	graphics
REVISION=	0

HOMEPAGE=	http://www.pstoedit.net/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pstoedit/}

RUN_DEPENDS=	print/ghostscript/gnu
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-libplot	\
		--without-emf	 	\
		--without-swf		\
		--without-magick
WANTLIB=	c ${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc base-gcc

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/pstoedit.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
