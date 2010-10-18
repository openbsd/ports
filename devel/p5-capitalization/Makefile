# $OpenBSD: Makefile,v 1.6 2010/10/18 17:48:10 espie Exp $

COMMENT=	use familiar style on method naming

MODULES=	cpan
DISTNAME=	capitalization-0.03
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	MIYAGAWA

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-Symdump

.include <bsd.port.mk>
