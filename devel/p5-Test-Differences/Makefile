# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:36 ajacoutot Exp $

COMMENT= 	Test differences in data structures

MODULES=	cpan
DISTNAME=	Test-Differences-0.47
REVISION=	1
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
