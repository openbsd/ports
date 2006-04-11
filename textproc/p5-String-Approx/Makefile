# $OpenBSD: Makefile,v 1.13 2006/04/11 06:00:04 kevlo Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"module for approximate matching"

DISTNAME=	String-Approx-3.26
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5 

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# LGPL/Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=String/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
