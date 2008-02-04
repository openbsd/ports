# $OpenBSD: Makefile,v 1.1.1.1 2008/02/04 20:02:54 jasper Exp $

COMMENT=		interface to Music Brainz

DISTNAME=		WebService-MusicBrainz-0.16
CATEGORIES=		www

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-Class-Accessor->=0.30:devel/p5-Class-Accessor \
			:p5-XML-LibXML->=1.63:textproc/p5-XML-LibXML \
			:p5-URI->=1.35:www/p5-URI \
			:p5-libwww-*:www/p5-libwww

.include <bsd.port.mk>
