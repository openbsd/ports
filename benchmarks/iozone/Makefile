# New ports collection makefile for:    iozone
# Version required:     2.01
# Date created:         26 November 1997
# Whom:                 niklas
#
# $OpenBSD: Makefile,v 1.2 1997/12/29 21:17:43 joey Exp $
#

DISTNAME=       iozone
PKGNAME=	iozone-2.01
CATEGORIES=	benchmarks
MASTER_SITES=   ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/
DISTFILES=      iozone-2.01.shar.gz

MAINTAINER=	niklas@openbsd.org

EXTRACT_CMD=    ( gzcat | awk '{if (/^\#!/) x++} {if(x) print $$0'}| /bin/sh )
EXTRACT_ARGS=   <
NO_WRKSUBDIR=   YES
MAN1=		iozone.1

.include <bsd.port.mk>
