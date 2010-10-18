# $OpenBSD: Makefile,v 1.9 2010/10/18 17:48:03 espie Exp $

COMMENT=	instantiate plugins as they're found

MODULES=	cpan
DISTNAME=	Module-Pluggable-Fast-0.18
REVISION=	2
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Universal-exports-<=0.05|p5-Universal-require-*:devel/p5-Universal-require

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
