# $OpenBSD: Makefile,v 1.11 2010/12/03 11:45:39 ajacoutot Exp $

COMMENT=	module to internal operations of neural networks

MODULES=	cpan
DISTNAME=	AI-Perceptron-1.0
REVISION=	0
CATEGORIES=	math
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-accessors

.include <bsd.port.mk>
