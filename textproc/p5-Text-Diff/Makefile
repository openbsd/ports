# $OpenBSD: Makefile,v 1.8 2010/12/03 11:46:49 ajacoutot Exp $

COMMENT= 	perform diffs on files and record sets

MODULES=	cpan
DISTNAME=	Text-Diff-1.37
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Algorithm-Diff

.include <bsd.port.mk>
