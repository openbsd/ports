# $OpenBSD: Makefile,v 1.7 2010/11/20 19:56:51 espie Exp $

COMMENT=	RSS Abstraction Interface

MODULES=	cpan
DISTNAME=	XML-RAI-1.301
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <s@msmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	textproc/p5-XML-RSS \
		textproc/p5-XML-RSS-Parser>=4.0 \
		devel/p5-Time-TimeDate

.include <bsd.port.mk>
