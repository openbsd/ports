# $OpenBSD: Makefile,v 1.3 2005/09/25 22:46:21 naddy Exp $

COMMENT=	"translate PostScript/PDF graphics to other vector formats"

DISTNAME=	pstoedit-3.42
CATEGORIES=	graphics

HOMEPAGE=	http://www.pstoedit.net/

MAINTAINER=	Steven Mestdagh <steven.mestdagh@esat.kuleuven.be>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pstoedit/}

RUN_DEPENDS=	::print/ghostscript/gnu
BUILD_DEPENDS=	${RUN_DEPENDS}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}	\
		--without-libplot	\
		--without-emf	 	\
		--without-swf		\
		--without-magick
WANTLIB=	c stdc++ m

post-install:
	cd ${WRKSRC}/doc && ${INSTALL_MAN} pstoedit.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
