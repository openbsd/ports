# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT= 	cross-platform basic tests for scripts

MODULES=	cpan

DISTNAME=	Test-Script-1.07
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-IPC-Run3>=0.034 \
		devel/p5-Probe-Perl>=0.01
BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
