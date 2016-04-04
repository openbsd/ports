# $OpenBSD: Makefile,v 1.19 2016/04/04 16:09:09 naddy Exp $

COMMENT=	translate PostScript/PDF graphics to other vector formats

DISTNAME=	pstoedit-3.70
REVISION=	0
SHARED_LIBS=	pstoedit 3.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.pstoedit.net/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pstoedit/}

RUN_DEPENDS=	print/ghostscript/gnu
BUILD_DEPENDS=	${RUN_DEPENDS}

USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-libplot	\
		--without-emf	 	\
		--without-swf		\
		--without-magick
WANTLIB=	c stdc++ m

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/pstoedit.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
