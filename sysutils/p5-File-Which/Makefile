# $OpenBSD: Makefile,v 1.6 2010/12/03 11:46:47 ajacoutot Exp $

COMMENT=		portable implementation of 'which' in Perl
MODULES=		cpan
DISTNAME=		File-Which-1.09
REVISION=		0
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
