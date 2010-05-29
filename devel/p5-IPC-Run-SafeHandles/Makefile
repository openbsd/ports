# $OpenBSD: Makefile,v 1.1.1.1 2010/05/29 23:10:11 robert Exp $

COMMENT=	safe guarding for IPC::Run

MODULES=	cpan
DISTNAME=	IPC-Run-SafeHandles-0.02
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-Test-Pod-Coverage \
			::devel/p5-Test-Pod

.include <bsd.port.mk>
