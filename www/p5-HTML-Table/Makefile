# $OpenBSD: Makefile,v 1.10 2006/07/14 05:06:21 steven Exp $

COMMENT=	"generate HTML tables for cgi scripts"

DISTNAME=	HTML-Table-2.04a
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 

HOMEPAGE=	http://www.chime.ucl.ac.uk/~rmhiajp/htmltable/index.htm

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.chime.ucl.ac.uk/~rmhiajp/htmltable/ \
		${MASTER_SITE_PERL_CPAN:=HTML/}

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
