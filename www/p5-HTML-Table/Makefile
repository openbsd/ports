# $OpenBSD: Makefile,v 1.1.1.1 2001/06/12 07:50:31 kevlo Exp $

COMMENT=	"generate HTML tables for cgi scripts"

DISTNAME=	HTML-Table-1.09
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 
NEED_VERSION=	1.414

HOMEPAGE=	http://www.chime.ucl.ac.uk/~rmhiajp/htmltable.htm

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.chime.ucl.ac.uk/~rmhiajp/ \
		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= HTML

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
