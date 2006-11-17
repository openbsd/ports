# $OpenBSD: Makefile,v 1.2 2006/11/17 16:02:48 espie Exp $

COMMENT=	"instantiate plugins as they're found"

MODULES=	cpan
DISTNAME=	Module-Pluggable-Fast-0.18
CATEGORIES=	devel

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Universal-exports-<=0.05|p5-Universal-require-*:devel/p5-Universal-require

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
