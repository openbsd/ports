# $OpenBSD: Makefile,v 1.12 2015/01/22 21:17:46 naddy Exp $
COMMENT=	command-line editor for tags in Ogg Vorbis files

DISTNAME=	oggtag_1.0
PKGNAME=	${DISTNAME:S/_/-/}
REVISION=	0
CATEGORIES=	audio

HOMEPAGE=	http://oggtag.sourceforge.net/

MAINTAINER=	Julian Leyh <julian@vgai.de>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ogg>=5 vorbis>=3

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=oggtag/}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	audio/libogg \
		audio/libvorbis

WRKDIST= 	${WRKDIR}

NO_TEST=	Yes

LIBS=		-lvorbis -logg -lm

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} -o oggtag oggtag.c vcedit.c \
		-I${LOCALBASE}/include -L${LOCALBASE}/lib ${LIBS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/oggtag ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/oggtag.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
