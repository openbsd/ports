# $OpenBSD: Makefile,v 1.8 2017/06/17 17:27:28 schwarze Exp $

COMMENT=	Extensible formatted print C library

VERSION=	2.0
DISTNAME=	libfmt-${VERSION}
REVISION=	0
CATEGORIES=	devel plan9
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://pdos.lcs.mit.edu/~rsc/software/
MAINTAINER=	Markus Friedl <markus@openbsd.org>
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	devel/libutf

PERMIT_PACKAGE_CDROM=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
TEST_TARGET=	test

pre-build:
	@cp ${FILESDIR}/Make.OpenBSD ${WRKSRC}

.include <bsd.port.mk>
