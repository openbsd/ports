# $OpenBSD: Makefile,v 1.18 2007/09/16 01:40:27 merdely Exp $

COMMENT=	binary-to-text file converter

DISTNAME=	ish-1.11
CATEGORIES=	converters

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license
WANTLIB=		c

MASTER_SITES=	\
	ftp://ports.jp.FreeBSD.org/pub/FreeBSD-jp/ports-jp/LOCAL_PORTS/ \
	ftp://ftp4.jp.FreeBSD.org/pub/FreeBSD-jp/ports-jp/LOCAL_PORTS/ \
	ftp://ftp.ics.es.osaka-u.ac.jp/pub/mirrors/FreeBSD-jp/ports-jp/LOCAL_PORTS/

MAKE_FILE=	makefile
MAKE_FLAGS=	CFLAGS="${CFLAGS}"
ALL_TARGET=	ish
NO_REGRESS=	Yes

.include <bsd.port.mk>
