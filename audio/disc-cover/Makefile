# $OpenBSD: Makefile,v 1.12 2002/12/18 09:36:21 sturm Exp $

COMMENT=	"creates cover for audio cds using cddb and latex"

DISTNAME=	disc-cover-1.4.0
CATEGORIES=	audio

HOMEPAGE=	http://home.wanadoo.nl/jano/disc-cover.html

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://home.wanadoo.nl/jano/files/

RUN_DEPENDS=	:teTeX_base-*:print/teTeX/base \
		:ImageMagick-*:graphics/ImageMagick \
		:p5-libwww-*:www/p5-libwww \
		:p5-Audio-CD-*:audio/p5-Audio-CD

NO_REGRESS=	Yes

do-build:
	@cd ${WRKSRC}; \
	pod2man disc-cover disc-cover.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/disc-cover ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/disc-cover.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/disc-cover
	${INSTALL_SCRIPT} ${WRKSRC}/freedb/index.cgi ${PREFIX}/share/examples/disc-cover
	${INSTALL_DATA} ${WRKSRC}/freedb/README ${PREFIX}/share/examples/disc-cover

.include <bsd.port.mk>
