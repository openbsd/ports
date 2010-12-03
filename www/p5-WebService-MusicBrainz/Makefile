# $OpenBSD: Makefile,v 1.8 2010/12/03 11:46:53 ajacoutot Exp $

COMMENT=		interface to Music Brainz

DISTNAME=		WebService-MusicBrainz-0.22
REVISION=		0
CATEGORIES=		www

MODULES=		cpan
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Class-Accessor>=0.30 \
			textproc/p5-XML-LibXML>=1.63 \
			www/p5-URI>=1.35 \
			www/p5-libwww

.include <bsd.port.mk>
