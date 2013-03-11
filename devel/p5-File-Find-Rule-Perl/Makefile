# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:17 espie Exp $

COMMENT=	common rules for searching for Perl things

MODULES=	cpan
DISTNAME=	File-Find-Rule-Perl-1.10
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-File-Find-Rule>=0.20
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
