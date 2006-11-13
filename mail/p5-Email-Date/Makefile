# $OpenBSD: Makefile,v 1.1.1.1 2006/11/13 00:10:32 espie Exp $

COMMENT= 	"find and format date headers"

MODULES=	cpan

DISTNAME=	Email-Date-1.101
CATEGORIES=	mail

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Time-Piece \
		::devel/p5-Time-TimeDate \
		::mail/p5-Email-Abstract \
		::mail/p5-Email-Simple

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
