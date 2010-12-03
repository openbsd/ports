# $OpenBSD: Makefile,v 1.8 2010/12/03 11:46:50 ajacoutot Exp $

COMMENT=	RSS Abstraction Interface

MODULES=	cpan
DISTNAME=	XML-RAI-1.301
REVISION=	0
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
