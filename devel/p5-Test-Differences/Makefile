# $OpenBSD: Makefile,v 1.4 2010/09/15 13:52:11 sthen Exp $

COMMENT= 	Test differences in data structures

MODULES=	cpan
DISTNAME=	Test-Differences-0.47
REVISION=	0
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/p5-Text-Diff

.include <bsd.port.mk>
