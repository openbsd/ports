# New ports collection makefile for:    iozone
# Version required:     2.01
# Date created:         26 November 1997
# Whom:                 niklas
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/11/27 00:03:07 niklas Exp $
#

DISTNAME=       iozone
PKGNAME=	iozone-2.01
CATEGORIES=	benchmarks
MASTER_SITES=   ftp://ftp.cs.uni-sb.de/pub/others/
DISTFILES=      iozone-2.01.shar.gz

MAINTAINER=	niklas@openbsd.org

EXTRACT_CMD=    ( gzcat | awk '{if (/^\#!/) x++} {if(x) print $$0'}| /bin/sh )
EXTRACT_ARGS=   <
NO_WRKSUBDIR=   YES
MAN1=		iozone.1

.include <bsd.port.mk>
