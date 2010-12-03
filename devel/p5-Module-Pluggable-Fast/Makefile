# $OpenBSD: Makefile,v 1.11 2010/12/03 11:44:33 ajacoutot Exp $

COMMENT=	instantiate plugins as they're found

MODULES=	cpan
DISTNAME=	Module-Pluggable-Fast-0.18
REVISION=	3
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	p5-Universal-exports-<=0.05|p5-Universal-require-*:devel/p5-Universal-require

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
