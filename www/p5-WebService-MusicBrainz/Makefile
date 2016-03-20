# $OpenBSD: Makefile,v 1.12 2016/03/20 19:57:23 naddy Exp $

COMMENT=		interface to Music Brainz

DISTNAME=		WebService-MusicBrainz-0.93
CATEGORIES=		www

MODULES=		cpan
PKG_ARCH=		*

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Class-Accessor>=0.30 \
			textproc/p5-XML-LibXML>=1.63 \
			www/p5-URI>=1.35 \
			www/p5-libwww

.include <bsd.port.mk>
