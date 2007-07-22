# $OpenBSD: Makefile,v 1.1.1.1 2007/07/22 15:58:02 simon Exp $

COMMENT=	change nature of data within a structure
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Data-Structure-Util-0.12
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Clone

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
