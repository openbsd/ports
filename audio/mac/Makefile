ONLY_FOR_ARCHS= aarch64 amd64 arm i386

COMMENT=	Monkey's audio lossless codec

VERSION=	10.20
DISTNAME=	MAC_1020_SDK
PKGNAME=	mac-${VERSION}
SHARED_LIBS +=  MAC                  0.0      # .0.0
CATEGORIES=	audio
EXTRACT_SUFX=	.zip

HOMEPAGE=	https://monkeysaudio.com

# BSD-3-Clause
PERMIT_PACKAGE=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

SITES=		https://monkeysaudio.com/files/
WRKDIST=	${WRKDIR}/mac-${VERSION}
FIX_CRLF_FILES=	Shared/*.h

post-extract:
	mkdir ${WRKSRC}
	mv ${WRKDIR}/!(mac-${VERSION}|bin) ${WRKSRC}

.include <bsd.port.mk>
