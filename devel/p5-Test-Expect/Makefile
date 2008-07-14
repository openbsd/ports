# $OpenBSD: Makefile,v 1.2 2008/07/14 13:58:09 dhill Exp $

COMMENT=	automated driving and testing of terminal-based programs

MODULES=	cpan
DISTNAME=	Test-Expect-0.31
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Class-Accessor-Chained \
		::devel/p5-Expect-Simple

.include <bsd.port.mk>
