# $OpenBSD: Makefile,v 1.3 2009/06/23 21:48:52 okan Exp $

COMMENT=	wrapper to Slay::Maker that reads the rules from a file

DISTNAME=	Slay-Makefile-0.12
CATEGORIES=	devel
MODULES=	cpan

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-File-Copy-Recursive-*:devel/p5-File-Copy-Recursive \
		:p5-Slay-Maker-*:devel/p5-Slay-Maker
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
