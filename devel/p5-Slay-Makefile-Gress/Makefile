# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:35 ajacoutot Exp $

COMMENT=	regression testing software using Slay::Makefile

DISTNAME=	Slay-Makefile-Gress-0.06
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

RUN_DEPENDS=	devel/p5-Slay-Makefile
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
