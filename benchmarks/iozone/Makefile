# $OpenBSD: Makefile,v 1.3 1998/10/07 04:35:52 marc Exp $
#

DISTNAME=       iozone-2.01
CATEGORIES=	benchmarks

MAINTAINER=	niklas@openbsd.org

MASTER_SITES=   ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/
EXTRACT_SUFX=	.shar.gz
EXTRACT_CMD=    ( gzcat | awk '{if (/^\#!/) x++} {if(x) print $$0'}| /bin/sh )
EXTRACT_ARGS=   <

NO_WRKSUBDIR=   YES

.include <bsd.port.mk>
