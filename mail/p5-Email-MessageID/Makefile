# $OpenBSD: Makefile,v 1.4 2009/08/09 19:39:46 jasper Exp $

COMMENT=	generate world unique message-ids

MODULES=	cpan
DISTNAME=	Email-MessageID-1.401
CATEGORIES=	mail

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::mail/p5-Email-Address

.include <bsd.port.mk>
