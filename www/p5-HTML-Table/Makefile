# $OpenBSD: Makefile,v 1.8 2003/06/20 04:37:21 kevlo Exp $

COMMENT=	"generate HTML tables for cgi scripts"

DISTNAME=	HTML-Table-1.18a
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 

HOMEPAGE=	http://www.chime.ucl.ac.uk/~rmhiajp/htmltable/index.htm

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.chime.ucl.ac.uk/~rmhiajp/htmltable/ \
		${MASTER_SITE_PERL_CPAN:=HTML/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
