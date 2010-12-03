# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT=	check for spelling errors in POD files

MODULES=	cpan

DISTNAME=	Test-Spelling-0.11
REVISION=	2
CATEGORIES=	devel textproc
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-Pod-Spell \
		textproc/aspell/core

.include <bsd.port.mk>
