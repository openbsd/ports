# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:02 espie Exp $

COMMENT=	safe guarding for IPC::Run

MODULES=	cpan
DISTNAME=	IPC-Run-SafeHandles-0.02
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-Test-Pod-Coverage \
			::devel/p5-Test-Pod

.include <bsd.port.mk>
