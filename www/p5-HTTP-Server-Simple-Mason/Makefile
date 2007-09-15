# $OpenBSD: Makefile,v 1.3 2007/09/15 20:38:24 merdely Exp $

COMMENT=	abstract baseclass for a standalone mason server

MODULES=	cpan
DISTNAME=	HTTP-Server-Simple-Mason-0.09
CATEGORIES=	www

MAINTAINER=	Deanna Phillips <deanna@sdf.lonestar.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Hook-LexWrap \
		::www/p5-HTML-Mason \
		::www/p5-HTTP-Server-Simple

.include <bsd.port.mk>
