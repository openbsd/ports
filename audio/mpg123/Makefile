# $OpenBSD: Makefile,v 1.3 1998/10/09 00:25:27 marc Exp $
#

DISTNAME=	mpg123-0.59o
CATEGORIES=	audio

MAINTAINER=	provos@openbsd.org

MASTER_SITES=	ftp://ftp.tu-clausthal.de/pub/unix/audio/mpg123/ \
		http://homepages.uni-tuebingen.de/student/michael.hipp/mpg123/

.if (${MACHINE_ARCH} != "i386")
ALL_TARGET=	openbsd
.else
ALL_TARGET=	openbsd-i386
.endif

.include <bsd.port.mk>
