# $OpenBSD: Makefile,v 1.20 2000/10/22 14:02:53 espie Exp $

DISTNAME=	mpg123-0.59r
CATEGORIES=	audio
NEED_VERSION=	1.300
MASTER_SITES=	http://www.mpg123.de/mpg123/ \
		http://www-ti.informatik.uni-tuebingen.de/~hippm/mpg123/ \
		ftp://ftp.tu-clausthal.de/pub/unix/audio/mpg123/ \
		http://ftp.tu-clausthal.de/pub/unix/audio/mpg123
MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/
MASTER_SITES1=	http://www.unix-ag.org/Linux-Alpha/Packages/

PATCHFILES=	mpg123-059r-v6-20000713b.diff.gz:0 \
		l3.diff.gz:1
PATCH_DIST_STRIP= -p1

HOMEPAGE=	http://www.mpg123.de/

MAINTAINER=	Hakan Olsson <ho@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	USE_INET6=Yes
MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}"

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
