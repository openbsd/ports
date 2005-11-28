# $OpenBSD: Makefile,v 1.3 2005/11/28 01:55:21 kevlo Exp $

COMMENT=	"interface for providing metadata about installed packages"

DISTNAME=	App-Info-0.45
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=App/}

CONFIGURE_STYLE= perl modbuild

.include <bsd.port.mk>
