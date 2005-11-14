# $OpenBSD: Makefile,v 1.3 2005/11/14 17:39:03 pvalchev Exp $

COMMENT=	"interface to read EXIF tags in JPEG images"

DISTNAME=	Image-EXIF-0.98.6
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	graphics perl5 

HOMEPAGE=       http://search.cpan.org/dist/Image-EXIF/

MAINTAINER=	Dan Weeks <danimal@danimal.org>

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/}

EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	exif.8::graphics/libexif

CONFIGURE_STYLE=perl

post-patch:
	@perl -i -p -e 's#/usr/local#${LOCALBASE}#' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
