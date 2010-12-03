# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:32 ajacoutot Exp $

COMMENT=	safe guarding for IPC::Run

MODULES=	cpan
DISTNAME=	IPC-Run-SafeHandles-0.02
REVISION=	0
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
