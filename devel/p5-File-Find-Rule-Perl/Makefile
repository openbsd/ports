# $OpenBSD: Makefile,v 1.4 2010/10/07 15:00:04 stephan Exp $

COMMENT=	common rules for searching for Perl things

MODULES=	cpan
DISTNAME=	File-Find-Rule-Perl-1.10
CATEGORIES=	devel

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	:p5-File-Find-Rule->=0.20:devel/p5-File-Find-Rule
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
