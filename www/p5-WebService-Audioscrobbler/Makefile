# $OpenBSD: Makefile,v 1.5 2010/12/03 11:46:53 ajacoutot Exp $

COMMENT=	interface to the Audioscrobbler WebService API

DISTNAME=	WebService-Audioscrobbler-0.07
REVISION=	0
CATEGORIES=	www audio

MODULES=	cpan
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Cache-Cache \
		devel/p5-Class-Accessor \
		devel/p5-Class-Data-Accessor \
		devel/p5-Universal-require \
		devel/p5-CLASS \
		textproc/p5-XML-Simple \
		www/p5-URI \
		www/p5-libwww

.include <bsd.port.mk>
