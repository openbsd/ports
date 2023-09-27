COMMENT=		VMDK file converter

DISTNAME=		vmdktool-1.4

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c z

SITES=			http://www.Awfulhak.org/vmdktool/ \
			ftp://ftp.Awfulhak.org/pub/vmdktool/ \
			http://people.FreeBSD.org/~brian/vmdktool/

ALL_TARGET=		vmdktool
FAKE_FLAGS=		PREFIX=${TRUEPREFIX}

.include <bsd.port.mk>
