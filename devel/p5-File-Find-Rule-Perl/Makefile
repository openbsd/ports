# $OpenBSD: Makefile,v 1.6 2010/11/15 19:46:03 espie Exp $

COMMENT=	common rules for searching for Perl things

MODULES=	cpan
DISTNAME=	File-Find-Rule-Perl-1.10
CATEGORIES=	devel
USE_GROFF =	Yes

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	p5-File-Find-Rule->=0.20:devel/p5-File-Find-Rule
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
