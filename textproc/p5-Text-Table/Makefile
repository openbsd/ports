# $OpenBSD: Makefile,v 1.4 2007/09/15 20:59:40 merdely Exp $

COMMENT=	organize data in tables

MODULES=	cpan
DISTNAME=	Text-Table-1.107
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	textproc

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Text-Aligner->=0.03:textproc/p5-Text-Aligner

.include <bsd.port.mk>
