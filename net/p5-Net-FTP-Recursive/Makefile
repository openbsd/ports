# $OpenBSD: Makefile,v 1.7 2010/12/03 11:45:42 ajacoutot Exp $

COMMENT=	recursive FTP client module

MODULES=	cpan
DISTNAME=	Net-FTP-Recursive-2.02
REVISION=	0
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
