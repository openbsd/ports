# $OpenBSD: Makefile,v 1.9 2002/11/27 21:36:43 pvalchev Exp $

COMMENT=	"trivial perl API for reading/writing XML"

DISTNAME=	XML-Simple-1.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

HOMEPAGE=	http://www.web.co.nz/~grantm/cpan/

BUILD_DEPENDS=  :p5-XML-Parser->=2:textproc/p5-XML-Parser
RUN_DEPENDS=    ${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
