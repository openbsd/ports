# $OpenBSD: Makefile,v 1.3 2010/10/19 08:02:57 espie Exp $

COMMENT=	interface to the Audioscrobbler WebService API

DISTNAME=	WebService-Audioscrobbler-0.07
CATEGORIES=	www audio

MODULES=	cpan
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Cache-Cache \
		::devel/p5-Class-Accessor \
		::devel/p5-Class-Data-Accessor \
		::devel/p5-Universal-require \
		::devel/p5-CLASS \
		::textproc/p5-XML-Simple \
		::www/p5-URI \
		::www/p5-libwww

.include <bsd.port.mk>
