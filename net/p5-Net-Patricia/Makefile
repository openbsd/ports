# $OpenBSD: Makefile,v 1.9 2011/01/07 11:28:40 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	Patricia Trie perl module for fast IP address lookups

MODULES=	cpan
DISTNAME=	Net-Patricia-1.19
CATEGORIES=	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GROFF =	Yes

RUN_DEPENDS =	net/p5-Net-CIDR-Lite \
		net/p5-Socket6

.include <bsd.port.mk>
