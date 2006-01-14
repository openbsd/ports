# $OpenBSD: Makefile,v 1.6 2006/01/14 00:07:29 espie Exp $

COMMENT=	'high dynamic range image format'
COMMENT-tools=	'image viewing tools for OpenEXR'
COMMENT-doc=	'developer documentation for OpenEXR'
CATEGORIES=	graphics

HOMEPAGE=	http://www.openexr.com/index.html
MASTER_SITES=	http://savannah.nongnu.org/download/openexr/

V=		1.2.2
DISTNAME=	OpenEXR-$V
MULTI_PACKAGES=	-tools -doc
PKGNAME=	OpenEXR-$Vp2
PKGNAME-tools=  OpenEXR-tools-$V
PKGNAME-doc=	OpenEXR-doc-$V
SHARED_LIBS=	Half	3.0	\
		Iex	3.0	\
		IlmImf	3.0	\
		Imath	3.0	

# Almost BSD
# `name of ILM not to be used for advertizing without written agreement'
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes

SUBPACKAGE?=
.if !defined(PACKAGING) || ${SUBPACKAGE} == "-tools"
LIB_DEPENDS+=fltk,fltk_gl::x11/fltk
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-tools"
LIB_DEPENDS+=	Half,Iex,IlmImf,Imath,::graphics/openexr
WANTLIB=	GL GLU X11 Xext c m stdc++ z
.endif

# Regress unhappy with separate build
#SEPARATE_BUILD=		simple

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

DOCDIR=${PREFIX}/share/doc/${DISTNAME}

post-install:
	${INSTALL_DATA} ${WRKDIST}/doc/*.pdf ${DOCDIR}
	
.include <bsd.port.mk>
