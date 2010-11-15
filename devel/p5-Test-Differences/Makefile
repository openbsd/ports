# $OpenBSD: Makefile,v 1.6 2010/11/15 19:46:06 espie Exp $

COMMENT= 	Test differences in data structures

MODULES=	cpan
DISTNAME=	Test-Differences-0.47
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-Text-Diff

.include <bsd.port.mk>
