# $OpenBSD: Makefile,v 1.4 1999/03/05 14:26:57 brad Exp $

DISTNAME=	mpg123-0.59q
CATEGORIES=	audio

MAINTAINER=	provos@openbsd.org

MASTER_SITES=	http://www-ti.informatik.uni-tuebingen.de/~hippm/mpg123/ \
		ftp://ftp.tu-clausthal.de/pub/unix/audio/mpg123/ \
		http://ftp.tu-clausthal.de/pub/unix/audio/mpg123

.if (${MACHINE_ARCH} != "i386")
ALL_TARGET=	openbsd
.else
ALL_TARGET=	openbsd-i386
.endif

.include <bsd.port.mk>
