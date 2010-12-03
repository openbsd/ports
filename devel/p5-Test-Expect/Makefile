# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:36 ajacoutot Exp $

COMMENT=	automated driving and testing of terminal-based programs

MODULES=	cpan
DISTNAME=	Test-Expect-0.31
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor-Chained \
		devel/p5-Expect-Simple

.include <bsd.port.mk>
