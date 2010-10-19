# $OpenBSD: Makefile,v 1.4 2010/10/19 07:43:01 espie Exp $

COMMENT=		portable implementation of 'which' in Perl
MODULES=		cpan
DISTNAME=		File-Which-1.09
CATEGORIES=		sysutils
USE_GROFF =	Yes

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS =		:p5-Test-Script->=1.05:devel/p5-Test-Script
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
