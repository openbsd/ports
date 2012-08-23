# $OpenBSD: Makefile,v 1.16 2012/08/23 15:52:47 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to md5 message-digest algorithm

MODULES=	cpan
DISTNAME=	MD5-1.7
REVISION=	3
CATEGORIES=	security
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += c

.include <bsd.port.mk>
