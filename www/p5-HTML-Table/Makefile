# $OpenBSD: Makefile,v 1.3 2002/03/21 21:25:54 espie Exp $

COMMENT=	"generate HTML tables for cgi scripts"

DISTNAME=	HTML-Table-1.12a
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
		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= HTML

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
