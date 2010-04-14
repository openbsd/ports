# $OpenBSD: Makefile,v 1.3 2010/04/14 07:36:54 stephan Exp $

COMMENT=		portable implementation of 'which' in Perl
MODULES=		cpan
DISTNAME=		File-Which-1.09
CATEGORIES=		sysutils

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS =		:p5-Test-Script->=1.05:devel/p5-Test-Script
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
