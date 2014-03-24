# $OpenBSD: Makefile,v 1.10 2014/03/24 08:33:14 jasper Exp $

COMMENT=	common rules for searching for Perl things

MODULES=	cpan
DISTNAME=	File-Find-Rule-Perl-1.13
CATEGORIES=	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-File-Find-Rule>=0.20 \
		devel/p5-Params-Util
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
