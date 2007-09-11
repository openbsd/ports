# $OpenBSD: Makefile,v 1.1.1.1 2007/09/11 20:55:21 merdely Exp $

COMMENT=	Perl interface to the swish-e C library
SHARED_ONLY=	Yes

DISTNAME=	swish-e-2.4.5
PKGNAME=	p5-SWISH-API-0.04
CATEGORIES=	textproc
MODULES=	cpan

MASTER_SITES=	http://swish-e.org/distribution/

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	swish-e::textproc/swish-e
WANTLIB+=	m z

WRKSRC=		${WRKDIST}/perl

.include <bsd.port.mk>
