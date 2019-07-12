# $OpenBSD: Makefile,v 1.11 2019/07/12 20:44:40 sthen Exp $

COMMENT=	Simple regular expression library from Plan 9

VERSION=	2.0
DISTNAME=	libregexp9-${VERSION}
REVISION=	1
CATEGORIES=	devel plan9
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://pdos.lcs.mit.edu/~rsc/software/
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	devel/libutf \
		devel/libfmt

PERMIT_PACKAGE=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
TEST_TARGET=	test

pre-build:
	@cp ${FILESDIR}/Make.OpenBSD ${WRKSRC}

.include <bsd.port.mk>
