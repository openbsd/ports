# $OpenBSD: Makefile,v 1.3 2007/01/16 17:52:06 simon Exp $

COMMENT=	"module to parse the content of tables in HTML text"

MODULES=	cpan
DISTNAME=	HTML-TableContentParser-0.13
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
