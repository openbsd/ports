# New ports collection makefile for:	mpg123
# Version required:		0.59o
# Date created:			28 April 1998
# Whom:				Niels Provos
#
# $Id: Makefile,v 1.1.1.1 1998/04/28 11:29:58 provos Exp $
#

DISTNAME=	mpg123-0.59o
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.tu-clausthal.de/pub/unix/audio/mpg123/ \
		http://homepages.uni-tuebingen.de/student/michael.hipp/mpg123/

MAINTAINER=	provos@openbsd.org

.if (${MACHINE_ARCH} != "i386")
ALL_TARGET=	openbsd
.else
ALL_TARGET=	openbsd-i386
.endif
MAN1=		mpg123.1

.include <bsd.port.mk>
