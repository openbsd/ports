# $OpenBSD: Makefile,v 1.7 1999/09/07 14:55:21 brad Exp $

DISTNAME=	mpg123-0.59q
CATEGORIES=	audio
MASTER_SITES=	http://www.mpg123.de/mpg123 \
		http://www-ti.informatik.uni-tuebingen.de/~hippm/mpg123/ \
		ftp://ftp.tu-clausthal.de/pub/unix/audio/mpg123/ \
		http://ftp.tu-clausthal.de/pub/unix/audio/mpg123

MAINTAINER=	provos@openbsd.org

HOMEPAGE=	http://www.mpg123.de/

.if (${MACHINE_ARCH} != "i386")
ALL_TARGET=	openbsd
.else
ALL_TARGET=	openbsd-i386
.endif

post-patch:
	@${CP} ${FILESDIR}/audio_openbsd.c ${WRKSRC}

.include <bsd.port.mk>
