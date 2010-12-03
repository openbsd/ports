# $OpenBSD: Makefile,v 1.8 2010/12/03 11:46:50 ajacoutot Exp $

COMMENT=	organize data in tables

MODULES=	cpan
DISTNAME=	Text-Table-1.114
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	textproc/p5-Text-Aligner>=0.03

.include <bsd.port.mk>
