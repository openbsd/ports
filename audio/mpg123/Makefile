# $OpenBSD: Makefile,v 1.12 2000/02/23 17:28:06 ho Exp $

DISTNAME=	mpg123-0.59r
CATEGORIES=	audio
MASTER_SITES=	http://www.mpg123.de/mpg123/ \
		http://www-ti.informatik.uni-tuebingen.de/~hippm/mpg123/ \
		ftp://ftp.tu-clausthal.de/pub/unix/audio/mpg123/ \
		http://ftp.tu-clausthal.de/pub/unix/audio/mpg123

PATCHFILES=	mpg123-059r-v6-20000111.diff.gz:0
MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/
PATCH_DIST_STRIP= -p1

MAINTAINER=	ho@openbsd.org

HOMEPAGE=	http://www.mpg123.de/

.if (${MACHINE_ARCH} != "i386")
ALL_TARGET=	openbsd
.else
ALL_TARGET=	openbsd-i386
.endif

# wrong way to detect IPv6
.if exists(/usr/include/netinet6/in6_ifattach.h)
MAKE_ENV+=     USE_INET6=YES
.endif

post-patch:
	@cp ${FILESDIR}/{audio_openbsd.c,term.c} ${WRKSRC}

.include <bsd.port.mk>
