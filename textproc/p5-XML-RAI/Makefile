# $OpenBSD: Makefile,v 1.1.1.1 2004/12/21 21:53:02 sturm Exp $

COMMENT=	"RSS Abstraction Interface"

DISTNAME=	XML-RAI-0.51
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Sam Smith <s@msmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

RUN_DEPENDS=	::textproc/p5-XML-RSS \
		::textproc/p5-XML-RSS-Parser \
		::devel/p5-Time-TimeDate
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl


.include <bsd.port.mk>
