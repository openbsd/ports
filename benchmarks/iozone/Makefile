# $OpenBSD: Makefile,v 1.5 1999/06/02 02:47:36 brad Exp $

DISTNAME=       iozone-2.01
CATEGORIES=	benchmarks
MASTER_SITES=   ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/
EXTRACT_SUFX=	.shar.gz

MAINTAINER=	niklas@openbsd.org

EXTRACT_CMD=	( gzcat | awk '{if (/^\#!/) x++} {if(x) print $$0'} | ${SH} )
EXTRACT_BEFORE_ARGS=	<
EXTRACT_AFTER_ARGS=	# empty

NO_WRKSUBDIR=	yes

.include <bsd.port.mk>
