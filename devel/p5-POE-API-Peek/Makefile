# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:34 ajacoutot Exp $

COMMENT=		peek into the internals of a running POE environment

DISTNAME=		POE-API-Peek-1.34
REVISION=		0

CATEGORIES=		devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Devel-Size \
			devel/p5-POE
REGRESS_DEPENDS=	devel/p5-Test-Distribution \
			devel/p5-Test-NoWarnings

.include <bsd.port.mk>
