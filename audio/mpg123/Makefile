# $OpenBSD: Makefile,v 1.9 1999/12/01 16:22:01 espie Exp $

DISTNAME=	mpg123-0.59q
CATEGORIES=	audio
MASTER_SITES=	http://www.mpg123.de/mpg123 \
		http://www-ti.informatik.uni-tuebingen.de/~hippm/mpg123/ \
		ftp://ftp.tu-clausthal.de/pub/unix/audio/mpg123/ \
		http://ftp.tu-clausthal.de/pub/unix/audio/mpg123

MAINTAINER=	ho@openbsd.org

HOMEPAGE=	http://www.mpg123.de/

.if (${MACHINE_ARCH} != "i386")
ALL_TARGET=	openbsd
.else
ALL_TARGET=	openbsd-i386
.endif

post-patch:
	@cp ${FILESDIR}/{audio_openbsd.c,term.c} ${WRKSRC}

.include <bsd.port.mk>
