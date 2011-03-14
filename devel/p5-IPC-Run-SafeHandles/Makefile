# $OpenBSD: Makefile,v 1.5 2011/03/14 09:17:27 sthen Exp $

COMMENT=	safe guarding for IPC::Run

MODULES=	cpan
DISTNAME=	IPC-Run-SafeHandles-0.02
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	devel/p5-Test-Pod-Coverage \
			devel/p5-Test-Pod

.include <bsd.port.mk>
