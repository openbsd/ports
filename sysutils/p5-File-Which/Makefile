# $OpenBSD: Makefile,v 1.5 2010/11/20 17:22:41 espie Exp $

COMMENT=		portable implementation of 'which' in Perl
MODULES=		cpan
DISTNAME=		File-Which-1.09
CATEGORIES=		sysutils
USE_GROFF =		Yes

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS =		devel/p5-Test-Script>=1.05
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
