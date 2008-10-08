# $OpenBSD: Makefile,v 1.3 2008/10/08 17:21:25 simon Exp $

COMMENT=	regression testing software using Slay::Makefile

DISTNAME=	Slay-Makefile-Gress-0.05
CATEGORIES=	devel
MODULES=	cpan

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Slay-Makefile-*:devel/p5-Slay-Makefile
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
