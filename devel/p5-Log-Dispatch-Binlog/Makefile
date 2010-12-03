# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:32 ajacoutot Exp $

COMMENT=		Storable based binary logs

DISTNAME=		Log-Dispatch-Binlog-0.02
REVISION=		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Log-Dispatch \
			devel/p5-Test-TempDir

.include <bsd.port.mk>
