# $OpenBSD: Makefile,v 1.15 2000/03/20 06:51:48 brad Exp $

DISTNAME=	mpg123-0.59r
CATEGORIES=	audio
MASTER_SITES=	http://www.mpg123.de/mpg123/ \
		http://www-ti.informatik.uni-tuebingen.de/~hippm/mpg123/ \
		ftp://ftp.tu-clausthal.de/pub/unix/audio/mpg123/ \
		http://ftp.tu-clausthal.de/pub/unix/audio/mpg123
MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/

NEED_VERSION=	1.213

PATCHFILES=	mpg123-059r-v6-20000217.diff.gz:0
PATCH_DIST_STRIP= -p1

HOMEPAGE=	http://www.mpg123.de/

MAINTAINER=	ho@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

MAKE_ENV=	USE_INET6=Yes
MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

.if (${MACHINE_ARCH} != "i386")
ALL_TARGET=	openbsd
.else
ALL_TARGET=	openbsd-i386
.endif

post-patch:
	@cp ${FILESDIR}/{audio_openbsd.c,term.c} ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mpg123
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/mpg123

.include <bsd.port.mk>
