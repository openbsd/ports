# $OpenBSD: Makefile,v 1.6 2010/11/15 19:46:05 espie Exp $

COMMENT=	regression testing software using Slay::Makefile

DISTNAME=	Slay-Makefile-Gress-0.06
CATEGORIES=	devel
MODULES=	cpan
USE_GROFF =	Yes

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Slay-Makefile
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
