# $OpenBSD: Makefile,v 1.2 2008/05/15 21:48:26 okan Exp $

COMMENT=	perl make engine using perl code for rules

DISTNAME=	Slay-Maker-0.07
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel
MODULES=	cpan

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Class-Std-*:devel/p5-Class-Std \
		:p5-IPC-Run-*:devel/p5-IPC-Run
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
