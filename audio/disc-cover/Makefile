# $OpenBSD: Makefile,v 1.18 2006/07/19 13:41:02 steven Exp $

COMMENT=	"creates cover for audio cds using cddb and latex"

DISTNAME=	disc-cover-1.5.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio

HOMEPAGE=	http://www.vanhemert.co.uk/disc-cover.html

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

EX_DIR=		${PREFIX}/share/examples/disc-cover
PNGS=		busy.png offline.png online.png

pre-configure:
	@perl -i -pe "s#%%PREFIX%%#${PREFIX}#" ${WRKSRC}/disc-cover

do-build:
	@cd ${WRKSRC}; pod2man disc-cover disc-cover.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/disc-cover ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/disc-cover.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${EX_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/{index.cgi,online.cgi} ${EX_DIR}
.for i in ${PNGS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${EX_DIR}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/disc-cover
	${INSTALL_DATA} ${WRKSRC}/templates/* ${PREFIX}/share/disc-cover

.include <bsd.port.mk>
