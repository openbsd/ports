# $OpenBSD: Makefile,v 1.29 2020/07/04 09:31:29 ajacoutot Exp $

COMMENT=	creates cover for audio cds using cddb and latex

DISTNAME=	disc-cover-1.5.6
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} webserver-1.0${EXTRACT_SUFX}
DIST_SUBDIR=	disc-cover
CATEGORIES=	audio
REVISION=	1

HOMEPAGE=	http://www.vanhemert.co.uk/disc-cover.html

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=disc-cover/}

RUN_DEPENDS=	print/texlive/base \
		graphics/ImageMagick \
		www/p5-libwww \
		audio/p5-Audio-CD

NO_TEST=	Yes

EX_DIR=		${PREFIX}/share/examples/disc-cover
PNGS=		busy.png offline.png online.png

pre-configure:
	@sed -i "s,%%PREFIX%%,${PREFIX}," ${WRKSRC}/disc-cover

do-build:
	@cd ${WRKSRC}; pod2man disc-cover disc-cover.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/disc-cover ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/disc-cover.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${EX_DIR}
	${INSTALL_SCRIPT} ${WRKDIR}/webserver/{index.cgi,online.cgi} ${EX_DIR}
.for i in ${PNGS}
	${INSTALL_DATA} ${WRKDIR}/webserver/${i} ${EX_DIR}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/disc-cover
	${INSTALL_DATA} ${WRKSRC}/templates/* ${PREFIX}/share/disc-cover

.include <bsd.port.mk>
