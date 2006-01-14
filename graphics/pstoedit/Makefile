# $OpenBSD: Makefile,v 1.6 2006/01/14 00:07:30 espie Exp $

COMMENT=	"translate PostScript/PDF graphics to other vector formats"

DISTNAME=	pstoedit-3.42
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	pstoedit 1.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.pstoedit.net/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

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
