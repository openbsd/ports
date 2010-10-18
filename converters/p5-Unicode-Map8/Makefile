# $OpenBSD: Makefile,v 1.18 2010/10/18 17:06:06 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	module to implement efficient mapping tables

DISTNAME=	Unicode-Map8-0.12
REVISION=	1
CATEGORIES=	converters
MODULES=	cpan
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::converters/p5-Unicode-String

.include <bsd.port.mk>
