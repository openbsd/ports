# $OpenBSD: Makefile,v 1.8 2013/10/11 23:49:21 naddy Exp $

COMMENT= 	cross-platform basic tests for scripts

MODULES=	cpan

DISTNAME=	Test-Script-1.07
REVISION=	0
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-IPC-Run3>=0.034 \
		devel/p5-Probe-Perl>=0.01
BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
