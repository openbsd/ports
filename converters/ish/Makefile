# $OpenBSD: Makefile,v 1.15 2002/12/23 00:37:50 pvalchev Exp $

COMMENT=	"binary-to-text file converter"

DISTNAME=	ish-1.11
CATEGORIES=	converters

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	\
	ftp://ports.jp.FreeBSD.org/pub/FreeBSD-jp/ports-jp/LOCAL_PORTS/ \
	ftp://ftp4.jp.FreeBSD.org/pub/FreeBSD-jp/ports-jp/LOCAL_PORTS/ \
	ftp://ftp.ics.es.osaka-u.ac.jp/pub/mirrors/FreeBSD-jp/ports-jp/LOCAL_PORTS/

MAKE_FILE=	makefile
MAKE_FLAGS=	CFLAGS="${CFLAGS}"
ALL_TARGET=	ish
NO_REGRESS=	Yes

.include <bsd.port.mk>
