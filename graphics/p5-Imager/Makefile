# $OpenBSD: Makefile,v 1.28 2010/11/17 08:05:15 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	generate and manipulate images

DISTNAME=	Imager-0.61
REVISION=	2
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
LIB_DEPENDS=	devel/t1lib \
		graphics/png \
		graphics/jpeg \
		:graphics/tiff
WANTLIB +=	t1>=3 png>=2 jpeg>=62 tiff>=35
CONFIGURE_ARGS=	--enable jpeg,tiff,png,ungif,T1-fonts,freetype2 \
		--incpath="${LOCALBASE}/include:${X11BASE}/include" \
		--libpath="${LOCALBASE}/lib:${X11BASE}/lib"
.else
# Don't use the libs although they might be installed.
CONFIGURE_ARGS=	--disable jpeg,tiff,png,gif,ungif,T1-fonts,TT-fonts,freetype2,w32
.endif

USE_GMAKE=	Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
