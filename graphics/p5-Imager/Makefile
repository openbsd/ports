# $OpenBSD: Makefile,v 1.12 2002/05/13 23:31:24 espie Exp $

COMMENT=	"module for generating and manipulating images"

DISTNAME=	Imager-0.39
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5
NEED_VERSION=	1.498

HOMEPAGE=	http://www.eecs.umich.edu/~addi/perl/Imager/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/A/AD/ADDI/} \
		http://www.eecs.umich.edu/~addi/perl/Imager/

FLAVORS=	libs
FLAVOR?=

.if ${FLAVOR:L} == "libs"
LIB_DEPENDS=	t1.3::devel/t1lib \
		png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff
CONFIGURE_ENV=	IM_LIBPATH="${LOCALBASE}/lib:${X11BASE}/lib" \
		IM_INCPATH="${LOCALBASE}/include:${X11BASE}/include"
PATCH_LIST=	patch-libs
USE_X11=	Yes
.else
# Don't use the libs although they might be installed.
PATCH_LIST=	patch-no_libs
.endif

USE_GMAKE=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
