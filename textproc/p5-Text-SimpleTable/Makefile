# $OpenBSD: Makefile,v 1.4 2007/05/05 17:44:51 simon Exp $

COMMENT=	"simple eyecandy ASCII Tables"

DISTNAME=	Text-SimpleTable-0.03
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	textproc

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

CONFIGURE_STYLE=modbuild

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
