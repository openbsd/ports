# $OpenBSD: Makefile,v 1.6 2010/10/19 07:54:24 espie Exp $

COMMENT=	organize data in tables

MODULES=	cpan
DISTNAME=	Text-Table-1.114
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Text-Aligner->=0.03:textproc/p5-Text-Aligner

.include <bsd.port.mk>
