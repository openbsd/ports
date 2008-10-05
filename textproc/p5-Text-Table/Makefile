# $OpenBSD: Makefile,v 1.5 2008/10/05 21:56:42 jasper Exp $

COMMENT=	organize data in tables

MODULES=	cpan
DISTNAME=	Text-Table-1.114
CATEGORIES=	textproc

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Text-Aligner->=0.03:textproc/p5-Text-Aligner

.include <bsd.port.mk>
