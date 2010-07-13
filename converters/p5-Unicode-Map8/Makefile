# $OpenBSD: Makefile,v 1.16 2010/07/13 19:46:11 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	module to implement efficient mapping tables

DISTNAME=	Unicode-Map8-0.12
REVISION=	0
CATEGORIES=	converters
MODULES=	cpan

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::converters/p5-Unicode-String

.include <bsd.port.mk>
