# $OpenBSD: Makefile,v 1.6 2002/05/14 12:07:10 naddy Exp $

COMMENT=	"trivial perl API for reading/writing XML"

DISTNAME=	XML-Simple-1.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.504
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

HOMEPAGE=	http://www.web.co.nz/~grantm/cpan/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

BUILD_DEPENDS=  ::textproc/p5-XML-Parser \
		::devel/p5-Storable
RUN_DEPENDS=    ${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
