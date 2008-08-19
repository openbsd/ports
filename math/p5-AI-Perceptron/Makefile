# $OpenBSD: Makefile,v 1.8 2008/08/19 22:56:00 jasper Exp $

COMMENT=	module to internal operations of neural networks

MODULES=	cpan
DISTNAME=	AI-Perceptron-1.0
CATEGORIES=	math

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-accessors

.include <bsd.port.mk>
