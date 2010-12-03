# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:35 ajacoutot Exp $

COMMENT=	wrapper to Slay::Maker that reads the rules from a file

DISTNAME=	Slay-Makefile-0.12
REVISION=	0
CATEGORIES=	devel
MODULES=	cpan
USE_GROFF =	Yes

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-File-Copy-Recursive \
		devel/p5-Slay-Maker
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
