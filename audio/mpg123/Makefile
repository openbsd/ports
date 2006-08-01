# $OpenBSD: Makefile,v 1.37 2006/08/01 12:13:28 espie Exp $

# mpg123 is unusable without FPU
NOT_FOR_ARCHS=	arm

COMMENT=	"mpeg audio 1/2 layer 1, 2 and 3 player"

DISTNAME=	mpg123-0.59r
PKGNAME=	${DISTNAME}p4
CATEGORIES=	audio
HOMEPAGE=	http://www.mpg123.de/

# Long, unclear license in ${WRKSRC}/COPYING.
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	http://www.mpg123.de/mpg123/ \
		http://www-ti.informatik.uni-tuebingen.de/~hippm/mpg123/ \
		ftp://ftp.tu-clausthal.de/pub/unix/audio/mpg123/ \
		http://ftp.tu-clausthal.de/pub/unix/audio/mpg123
MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/

PATCHFILES=	mpg123-059r-v6-20000713b.diff.gz:0
PATCH_DIST_STRIP= -p1

FLAVORS=	esd
FLAVOR?=

.if ${FLAVOR:L:Mesd}
LIB_DEPENDS=	esd.>=2::audio/esound
ALL_TARGET=	openbsd-esd
WANTLIB+=	audiofile
.else
ALL_TARGET=	openbsd
.endif

MAKE_FLAGS=	CC='${CC}'

post-patch:
	@cp ${FILESDIR}/audio_openbsd.c ${FILESDIR}/term.c ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mpg123
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/mpg123

NO_REGRESS=	Yes

.include <bsd.port.mk>
