# $OpenBSD: Makefile,v 1.9 2011/06/13 19:04:10 jasper Exp $

COMMENT=	organize data in tables

MODULES=	cpan
DISTNAME=	Text-Table-1.123
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	textproc/p5-Text-Aligner>=0.05

.include <bsd.port.mk>
