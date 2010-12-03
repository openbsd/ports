# $OpenBSD: Makefile,v 1.11 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT= 	check for pod coverage in your distribution

MODULES=	cpan
DISTNAME=	Test-Pod-Coverage-1.08
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Pod-Coverage

.include <bsd.port.mk>
