# $OpenBSD: Makefile,v 1.8 2006/11/24 23:09:54 espie Exp $

COMMENT-main=	'high dynamic range image format'
COMMENT-tools=	'image viewing tools for OpenEXR'
COMMENT-doc=	'developer documentation for OpenEXR'
CATEGORIES=	graphics

HOMEPAGE=	http://www.openexr.com/index.html
MASTER_SITES=	http://savannah.nongnu.org/download/openexr/

V=		1.2.2
DISTNAME=	OpenEXR-$V
MULTI_PACKAGES=	-main -tools -doc
PKGNAME-main=	OpenEXR-$Vp3
PKGNAME-tools=  OpenEXR-tools-$V
PKGNAME-doc=	OpenEXR-doc-$Vp0
SHARED_LIBS=	Half	3.0	\
		Iex	3.0	\
		IlmImf	3.0	\
		Imath	3.0	

# Almost BSD
# `name of ILM not to be used for advertizing without written agreement'
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS-tools=	fltk,fltk_gl::x11/fltk \
			Half,Iex,IlmImf,Imath,::graphics/openexr
WANTLIB-tools=		GL GLU X11 Xext c m stdc++ z
PKG_ARCH-doc=		*

# Regress unhappy with separate build
#SEPARATE_BUILD=		simple

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes

DOCDIR=${PREFIX}/share/doc/${DISTNAME}

post-install:
	${INSTALL_DATA} ${WRKDIST}/doc/*.pdf ${DOCDIR}
	
.include <bsd.port.mk>
