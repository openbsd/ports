# $OpenBSD: Makefile,v 1.7 2002/06/07 21:37:12 wilfried Exp $

COMMENT=	"module to extract text contained within HTML tables"

DISTNAME=	HTML-TableExtract-1.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
NEED_VERSION=	1.515

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

BUILD_DEPENDS=	::www/p5-HTML-Parser
RUN_DEPENDS=	${BUILD_DEPENDS}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
