# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:33 ajacoutot Exp $

COMMENT=		set up Log::Dispatch::Config for a test run

DISTNAME=		Log-Dispatch-Config-TestLog-0.01
REVISION=		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Log-Dispatch-Binlog \
			devel/p5-Log-Dispatch-Config \
			devel/p5-Path-Class \
			devel/p5-Sub-Override

.include <bsd.port.mk>
