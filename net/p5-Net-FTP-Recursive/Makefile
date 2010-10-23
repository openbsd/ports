# $OpenBSD: Makefile,v 1.6 2010/10/23 09:35:20 jasper Exp $

COMMENT=	recursive FTP client module

MODULES=	cpan
DISTNAME=	Net-FTP-Recursive-2.02
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <s@msmith.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST =	${WRKDIR}/Net-FTP-Recursive

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	samples

.include <bsd.port.mk>
