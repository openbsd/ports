# $OpenBSD: Makefile,v 1.10 2013/03/11 11:44:47 espie Exp $

COMMENT=		interface to Music Brainz

DISTNAME=		WebService-MusicBrainz-0.93
CATEGORIES=		www

MODULES=		cpan
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Class-Accessor>=0.30 \
			textproc/p5-XML-LibXML>=1.63 \
			www/p5-URI>=1.35 \
			www/p5-libwww

.include <bsd.port.mk>
