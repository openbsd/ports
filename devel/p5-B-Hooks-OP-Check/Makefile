# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:27 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		wrap OP check callbacks

DISTNAME=		B-Hooks-OP-Check-0.18
REVISION=		1

CATEGORIES=		devel
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-ExtUtils-Depends>=0.302

.include <bsd.port.mk>
