# $OpenBSD: Makefile,v 1.3 2010/07/13 19:46:13 sthen Exp $

COMMENT=	perl make engine using perl code for rules

DISTNAME=	Slay-Maker-0.07
REVISION=	0
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
