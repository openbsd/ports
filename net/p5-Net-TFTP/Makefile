# $OpenBSD: Makefile,v 1.7 2011/03/11 18:07:26 jasper Exp $

COMMENT=	TFTP client class

MODULES=	cpan
DISTNAME=	Net-TFTP-0.19
CATEGORIES=	net
USE_GROFF =	Yes

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

REGRESS_DEPENDS=	devel/p5-Test-MockModule \
			devel/p5-Test-Warn

.include <bsd.port.mk>
