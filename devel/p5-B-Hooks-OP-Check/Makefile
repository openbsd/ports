# $OpenBSD: Makefile,v 1.4 2010/10/18 17:47:55 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		wrap OP check callbacks

DISTNAME=		B-Hooks-OP-Check-0.18
REVISION=		0

CATEGORIES=		devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:p5-ExtUtils-Depends->=0.302:devel/p5-ExtUtils-Depends

.include <bsd.port.mk>
