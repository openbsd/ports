# $OpenBSD: Makefile,v 1.6 1999/06/02 20:22:05 brad Exp $

DISTNAME=       iozone-2.01
CATEGORIES=	benchmarks
MASTER_SITES=   ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/
EXTRACT_SUFX=	.shar.gz

NEED_VERSION=	1.92

MAINTAINER=	niklas@openbsd.org

EXTRACT_CMD=	( gzcat | awk '{if (/^\#!/) x++} {if(x) print $$0'} | ${SH} )
EXTRACT_BEFORE_ARGS=	<
EXTRACT_AFTER_ARGS=	# empty

NO_WRKSUBDIR=	yes

.include <bsd.port.mk>
