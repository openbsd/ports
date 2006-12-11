# $OpenBSD: Makefile,v 1.1.1.1 2006/12/11 20:50:12 sturm Exp $

COMMENT=	"perl module to generate random data"

DISTNAME=	Data-Random-0.05
CATEGORIES=	devel

MAINTAINER=	Alexander Bluhm <alexander_bluhm@genua.de>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=::devel/p5-Date-Calc \
		::graphics/p5-GD

MODULES=	cpan

.include <bsd.port.mk>
