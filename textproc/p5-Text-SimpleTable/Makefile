# $OpenBSD: Makefile,v 1.3 2006/12/25 13:40:28 simon Exp $

COMMENT=	"simple eyecandy ASCII Tables"

DISTNAME=	Text-SimpleTable-0.03
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	textproc

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

CONFIGURE_STYLE=modbuild

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
