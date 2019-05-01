# $OpenBSD: Makefile,v 1.10 2019/05/01 20:12:52 danj Exp $

COMMENT=	Extensible formatted print C library

VERSION=	2.0
DISTNAME=	libfmt-${VERSION}
REVISION=	1
CATEGORIES=	devel plan9
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://pdos.lcs.mit.edu/~rsc/software/
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	devel/libutf

PERMIT_PACKAGE_CDROM=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
TEST_TARGET=	test
MAKE_FLAGS=	LOCALBASE=${LOCALBASE}

pre-build:
	@cp ${FILESDIR}/Make.OpenBSD ${WRKSRC}

.include <bsd.port.mk>
