# $OpenBSD: Makefile,v 1.9 2007/01/16 17:52:06 simon Exp $

COMMENT=	"HTML text formating class"

MODULES=	cpan
DISTNAME=	HTML-Format-2.04
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-HTML-Tree-*:www/p5-HTML-Tree \
		:p5-Font-AFM-*:textproc/p5-Font-AFM
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
