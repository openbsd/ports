# $OpenBSD: Makefile,v 1.3 2006/03/12 17:33:28 steven Exp $

COMMENT=	"RSS Abstraction Interface"

DISTNAME=	XML-RAI-1.301
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
		:p5-XML-RSS-Parser->=4.0:textproc/p5-XML-RSS-Parser \
		::devel/p5-Time-TimeDate
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
