# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:29 ajacoutot Exp $

COMMENT=		run code after a subroutine call

DISTNAME=		Context-Preserve-0.01
REVISION=		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
CPAN_AUTHOR=		JROCKWAY
USE_GROFF =		Yes

REGRESS_DEPENDS=	devel/p5-Test-Exception \
			devel/p5-Test-use-ok

.include <bsd.port.mk>
