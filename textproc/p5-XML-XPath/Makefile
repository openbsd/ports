# $OpenBSD: Makefile,v 1.9 2002/06/07 21:37:12 wilfried Exp $

COMMENT=	"modules for parsing and evaluating XPath statements"

DISTNAME=	XML-XPath-1.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

BUILD_DEPENDS=  ::textproc/p5-XML-Parser
RUN_DEPENDS=    ${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
