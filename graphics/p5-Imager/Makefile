# $OpenBSD: Makefile,v 1.4 2001/05/08 01:07:12 pvalchev Exp $

COMMENT=	'module for generating images'

DISTNAME=	Imager-0.37
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5
NEED_VERSION=	1.407

HOMEPAGE=	http://www.eecs.umich.edu/~addi/perl/Imager/

MAINTAINER=	Peter Valchev <pvalchev@home.com>

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
		gif.::graphics/giflib \
		jpeg.::graphics/jpeg \
		tiff.::graphics/tiff
CONFIGURE_ENV=	IM_LIBPATH="/usr/local/lib:/usr/X11R6/lib" \
		IM_INCPATH="/usr/local/include:/usr/X11R6/include"
PATCH_LIST=
USE_X11=	Yes
.else
# Don't use the libs although they might be installed.
PATCH_LIST=	patch-no_libs
.endif

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
