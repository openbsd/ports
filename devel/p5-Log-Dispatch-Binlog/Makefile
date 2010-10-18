# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:02 espie Exp $

COMMENT=		Storable based binary logs

DISTNAME=		Log-Dispatch-Binlog-0.02

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
USE_GROFF =	Yes

RUN_DEPENDS=		::devel/p5-Log-Dispatch \
			::devel/p5-Test-TempDir

.include <bsd.port.mk>
