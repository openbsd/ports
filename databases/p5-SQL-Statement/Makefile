# $OpenBSD: Makefile,v 1.5 2004/01/17 15:58:07 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"sql parsing and processing"

DISTNAME=	SQL-Statement-0.1020
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5 

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=SQL/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
