# $OpenBSD: Makefile,v 1.10 2003/07/04 06:06:54 kevlo Exp $

COMMENT=	"trivial perl API for reading/writing XML"

DISTNAME=	XML-Simple-2.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

HOMEPAGE=	http://www.web.co.nz/~grantm/cpan/

BUILD_DEPENDS=  :p5-XML-Parser->=2:textproc/p5-XML-Parser \
		:p5-XML-SAX->=0.12:textproc/p5-XML-SAX
RUN_DEPENDS=    ${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
