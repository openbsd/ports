# $OpenBSD: Makefile,v 1.1.1.1 2007/11/02 14:47:59 merdely Exp $

COMMENT=	wrapper to Slay::Maker that reads the rules from a file

DISTNAME=	Slay-Makefile-0.10
CATEGORIES=	devel
MODULES=	cpan

MAINTAINER=	Okan Demirmen <okan@demirmen.com>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-File-Copy-Recursive-*:devel/p5-File-Copy-Recursive \
		:p5-Slay-Maker-*:devel/p5-Slay-Maker
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
