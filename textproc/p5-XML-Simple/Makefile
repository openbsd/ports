# $OpenBSD: Makefile,v 1.14 2005/02/04 05:52:35 kevlo Exp $

COMMENT=	"trivial perl API for reading/writing XML"

DISTNAME=	XML-Simple-2.14
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

HOMEPAGE=	http://www.web.co.nz/~grantm/cpan/

RUN_DEPENDS=	:p5-XML-Parser->=2:textproc/p5-XML-Parser \
		:p5-XML-SAX->=0.12:textproc/p5-XML-SAX
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
