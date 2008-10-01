# $OpenBSD: Makefile,v 1.23 2008/10/01 14:30:22 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	generate and manipulate images

DISTNAME=	Imager-0.61
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	graphics
MODULES=	cpan

HOMEPAGE=	http://imager.perl.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

FLAVORS=	libs
FLAVOR?=

.if ${FLAVOR:L} == "libs"
LIB_DEPENDS=	t1.>=3::devel/t1lib \
		png.>=2::graphics/png \
		jpeg.>=62::graphics/jpeg \
		tiff.>=35::graphics/tiff
CONFIGURE_ARGS=	--enable jpeg,tiff,png,ungif,T1-fonts,freetype2 \
		--incpath="${LOCALBASE}/include:${X11BASE}/include" \
		--libpath="${LOCALBASE}/lib:${X11BASE}/lib"
USE_X11=	Yes
.else
# Don't use the libs although they might be installed.
CONFIGURE_ARGS=	--disable jpeg,tiff,png,gif,ungif,T1-fonts,TT-fonts,freetype2,w32
.endif

USE_GMAKE=	Yes

.include <bsd.port.mk>
