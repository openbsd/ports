# $OpenBSD: Makefile,v 1.9 2004/01/17 15:58:10 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"perl module for parsing XML documents"

DISTNAME=	XML-Parser-2.31
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

HOMEPAGE=	http://wwwx.netheaven.com/~coopercc/xmlparser/

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/} \
		${HOMEPAGE}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	expat.2::textproc/expat

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	EXPATLIBPATH=${LOCALBASE}/lib EXPATINCPATH=${LOCALBASE}/include

.include <bsd.port.mk>
