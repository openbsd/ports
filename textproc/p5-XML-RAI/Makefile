# $OpenBSD: Makefile,v 1.4 2007/01/21 21:46:22 simon Exp $

COMMENT=	"RSS Abstraction Interface"

MODULES=	cpan
DISTNAME=	XML-RAI-1.301
CATEGORIES=	textproc

MAINTAINER=	Sam Smith <s@msmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-XML-RSS \
		:p5-XML-RSS-Parser->=4.0:textproc/p5-XML-RSS-Parser \
		::devel/p5-Time-TimeDate

.include <bsd.port.mk>
