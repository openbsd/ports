# $OpenBSD: Makefile,v 1.5 2002/06/26 09:11:05 kevlo Exp $

COMMENT=	"generate HTML tables for cgi scripts"

DISTNAME=	HTML-Table-1.15
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 
NEED_VERSION=	1.515

HOMEPAGE=	http://www.chime.ucl.ac.uk/~rmhiajp/htmltable.htm

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.chime.ucl.ac.uk/~rmhiajp/ \
		${MASTER_SITE_PERL_CPAN:=HTML/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
