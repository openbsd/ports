# $OpenBSD: Makefile,v 1.1.1.1 2008/02/04 20:09:39 jasper Exp $

COMMENT=	M4P/MP4/M4a audio/video tools

DISTNAME=	Audio-M4P-0.42
CATEGORIES=	audio

MODULES=	cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-Crypt-Rijndael-*:security/p5-Crypt-Rijndael \
			:p5-Tree-Simple-*:devel/p5-Tree-Simple \
			:p5-Tree-Simple-View-*:devel/p5-Tree-Simple-View

.include <bsd.port.mk>
