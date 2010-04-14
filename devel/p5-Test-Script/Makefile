# $OpenBSD: Makefile,v 1.2 2010/04/14 07:34:14 stephan Exp $

COMMENT= 	cross-platform basic tests for scripts

MODULES=	cpan

DISTNAME=	Test-Script-1.07
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-IPC-Run3->=0.034:devel/p5-IPC-Run3 \
		:p5-Probe-Perl->=0.01:devel/p5-Probe-Perl
BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
