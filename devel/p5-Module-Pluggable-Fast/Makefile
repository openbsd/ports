# $OpenBSD: Makefile,v 1.5 2007/05/05 17:44:50 simon Exp $

COMMENT=	"instantiate plugins as they're found"

MODULES=	cpan
DISTNAME=	Module-Pluggable-Fast-0.18
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Universal-exports-<=0.05|p5-Universal-require-*:devel/p5-Universal-require

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
