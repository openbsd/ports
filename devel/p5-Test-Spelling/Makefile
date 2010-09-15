# $OpenBSD: Makefile,v 1.5 2010/09/15 13:52:11 sthen Exp $

COMMENT=	check for spelling errors in POD files

MODULES=	cpan

DISTNAME=	Test-Spelling-0.11
REVISION=	1
CATEGORIES=	devel textproc

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/p5-Pod-Spell \
		::textproc/aspell/core

.include <bsd.port.mk>
