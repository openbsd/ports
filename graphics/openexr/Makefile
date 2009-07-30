# $OpenBSD: Makefile,v 1.14 2009/07/30 11:56:39 jasper Exp $

COMMENT-main=	high dynamic range image format
COMMENT-tools=	image viewing tools for OpenEXR
COMMENT-doc=	developer documentation for OpenEXR

V=		1.6.1
DISTNAME=	openexr-$V
PKGNAME-main=	OpenEXR-$Vp1
PKGNAME-tools=  OpenEXR-tools-$Vp0
PKGNAME-doc=	OpenEXR-doc-$V
SHARED_LIBS=	IlmImf               4.0      # .6.0	
CATEGORIES=	graphics

HOMEPAGE=	http://www.openexr.com/

# Modified BSD license
# `name of ILM not to be used for advertizing without written agreement'
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=openexr/}

MULTI_PACKAGES= 	-main -tools -doc

WANTLIB-main=		m z stdc++
LIB_DEPENDS-main=	Half,Iex,Imath,IlmThread::graphics/ilmbase

WANTLIB-tools=		${WANTLIB-main} c m pthread stdc++
LIB_DEPENDS-tools=	${LIB_DEPENDS-main} \
			IlmImf.>=4::graphics/openexr
PKG_ARCH-doc=		*

# Regress unhappy with separate build
#SEPARATE_BUILD=		simple

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes

DOCDIR= 		${PREFIX}/share/doc/OpenEXR

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/*.pdf ${DOCDIR}

.include <bsd.port.mk>
