# $OpenBSD: Makefile,v 1.14 2011/06/13 16:34:49 jasper Exp $

COMMENT=	sql parsing and processing

MODULES=	cpan
DISTNAME=	SQL-Statement-1.33
CATEGORIES=	databases

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	devel/p5-Clone>=0.30 \
		devel/p5-Params-Util>=1.00

.include <bsd.port.mk>
