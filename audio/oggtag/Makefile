# $OpenBSD: Makefile,v 1.6 2009/03/25 14:28:38 naddy Exp $
COMMENT=	command-line editor for tags in Ogg Vorbis files

DISTNAME=	oggtag_1.0
PKGNAME=	${DISTNAME:S/_/-/}p0
CATEGORIES=	audio

HOMEPAGE=	http://oggtag.sourceforge.net/

MAINTAINER=	Julian Leyh <julian@vgai.de>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=oggtag/}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	ogg.>=5::audio/libogg \
		vorbis.>=3::audio/libvorbis

WRKDIST= 	${WRKDIR}

NO_REGRESS=	Yes

LIBS=		-lvorbis -logg -lm

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} -o oggtag oggtag.c vcedit.c \
		-I${LOCALBASE}/include -L${LOCALBASE}/lib ${LIBS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/oggtag ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/oggtag.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
