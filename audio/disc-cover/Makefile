# $OpenBSD: Makefile,v 1.8 2002/06/09 05:36:21 wilfried Exp $

COMMENT=	"creates cover for audio cds using cddb and latex"

DISTNAME=	disc-cover-1.3.1
CATEGORIES=	audio
NEED_VERSION=	1.504

HOMEPAGE=	http://eek.wi.leidenuniv.nl/~jvhemert/disc-cover

MAINTAINER=	Nikolay Sturm <sturm@sec.informatik.tu-darmstadt.de>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/unstable/

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
