# $OpenBSD: Makefile,v 1.2 2002/05/14 12:07:10 naddy Exp $

COMMENT=	"US-ASCII transliterations of Unicode text"

DISTNAME=	Text-Unidecode-0.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5 
NEED_VERSION=	1.500

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

CONFIGURE_STYLE= perl

REGRESS_TARGET=	test

.include <bsd.port.mk>
