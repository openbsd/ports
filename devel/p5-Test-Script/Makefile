# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:23 espie Exp $

COMMENT= 	cross-platform basic tests for scripts

MODULES=	cpan

DISTNAME=	Test-Script-1.07
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-IPC-Run3>=0.034 \
		devel/p5-Probe-Perl>=0.01
BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
