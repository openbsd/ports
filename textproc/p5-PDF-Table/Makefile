# $OpenBSD: Makefile,v 1.3 2010/11/20 19:56:49 espie Exp $

COMMENT=		create PDF tables with perl

DISTNAME=		PDF-Table-0.9.3

CATEGORIES=		textproc

MAINTAINER=		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
USE_GROFF =		Yes
RUN_DEPENDS=		textproc/p5-PDF-API2

.include <bsd.port.mk>
