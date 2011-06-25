# $OpenBSD: Makefile,v 1.9 2011/06/25 08:23:55 jasper Exp $

COMMENT= 	perform diffs on files and record sets

MODULES=	cpan
DISTNAME=	Text-Diff-1.41
CATEGORIES=	textproc
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Algorithm-Diff

.include <bsd.port.mk>
