# $OpenBSD: Makefile,v 1.1.1.1 2007/12/30 22:35:20 okan Exp $

COMMENT=	create multiple virtual instances of a Perl interpreter

DISTNAME=	Safe-World-0.14
CATEGORIES=	devel
MODULES=	cpan

CPAN_AUTHOR=	GMPASSOS

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Hash-NoRef-*:devel/p5-Hash-NoRef \
		:p5-Safe-Hole-*:devel/p5-Safe-Hole
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
