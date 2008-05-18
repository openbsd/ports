# $OpenBSD: Makefile,v 1.2 2008/05/18 20:31:55 okan Exp $

COMMENT=	wrapper to Slay::Maker that reads the rules from a file

DISTNAME=	Slay-Makefile-0.11
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
