# $OpenBSD: Makefile,v 1.1.1.1 2016/02/02 23:58:38 ajacoutot Exp $

COMMENT=		VMDK file converter

DISTNAME=		vmdktool-1.4

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c z

MASTER_SITES=		http://www.Awfulhak.org/vmdktool/ \
			ftp://ftp.Awfulhak.org/pub/vmdktool/ \
			http://people.FreeBSD.org/~brian/vmdktool/

ALL_TARGET=		vmdktool
FAKE_FLAGS=		PREFIX=${TRUEPREFIX}

.include <bsd.port.mk>
