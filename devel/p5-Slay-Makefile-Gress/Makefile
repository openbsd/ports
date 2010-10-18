# $OpenBSD: Makefile,v 1.5 2010/10/18 17:48:06 espie Exp $

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

RUN_DEPENDS=	:p5-Slay-Makefile-*:devel/p5-Slay-Makefile
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
