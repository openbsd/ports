# $OpenBSD: Makefile,v 1.1.1.1 2001/03/08 11:11:19 reinhard Exp $

DISTNAME=	Imager-0.37
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5
NEED_VERSION=	1.353
MASTER_SITES=	http://www.eecs.umich.edu/~addi/perl/Imager/ \
		http://www.cpan.org/authors/${AUTHOR_DIR} \
		ftp://ftp.cpan.org/CPAN/authors/${AUTHOR_DIR} \
		ftp://ftp.cs.colorado.edu/pub/perl/CPAN/authors/${AUTHOR_DIR} \
		ftp://ftp.bora.net/pub/CPAN/modules/by-authors/${AUTHOR_DIR} \
		ftp://ftp.isu.net.sa/pub/CPAN/modules/by-authors/${AUTHOR_DIR} \
AUTHOR_DIR=	id/A/AD/ADDI/

HOMEPAGE=	http://www.eecs.umich.edu/~addi/perl/Imager/

MAINTAINER=	Peter Valchev <pvalchev@toxiclinux.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	libs
FLAVOR?=

.if ${FLAVOR:L} == "libs"
LIB_DEPENDS=	t1.1::devel/t1lib \
		ttf.1::print/freetype \
		png.1::graphics/png \
		gif.4::graphics/giflib \
		jpeg::graphics/jpeg \
		tiff::graphics/tiff
CONFIGURE_ENV+=	IM_LIBPATH=/usr/local/lib \
		IM_INCPATH=/usr/local/include
.endif

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
