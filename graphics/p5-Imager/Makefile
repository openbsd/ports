# $OpenBSD: Makefile,v 1.7 2001/05/22 00:31:54 pvalchev Exp $

COMMENT=	"module for generating and manipulating images"

DISTNAME=	Imager-0.38
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5
NEED_VERSION=	1.407

HOMEPAGE=	http://www.eecs.umich.edu/~addi/perl/Imager/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN} \
		http://www.eecs.umich.edu/~addi/perl/Imager/
MASTER_SITE_SUBDIR= ../by-authors/id/A/AD/ADDI/

FLAVORS=	libs
FLAVOR?=

.if ${FLAVOR:L} == "libs"
LIB_DEPENDS=	t1.::devel/t1lib \
		ttf.::print/freetype \
		png.::graphics/png \
		jpeg.::graphics/jpeg \
		tiff.::graphics/tiff
CONFIGURE_ENV=	IM_LIBPATH="${LOCALBASE}/lib:${X11BASE}/lib" \
		IM_INCPATH="${LOCALBASE}/include:${X11BASE}/include"
PATCH_LIST=	patch-no_gif
USE_X11=	Yes
.else
# Don't use the libs although they might be installed.
PATCH_LIST=	patch-no_libs
.endif

USE_GMAKE=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
