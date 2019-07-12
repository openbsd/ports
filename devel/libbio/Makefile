# $OpenBSD: Makefile,v 1.11 2019/07/12 20:44:37 sthen Exp $

COMMENT=	Simple buffered I/O library from Plan 9

VERSION=	2.0
DISTNAME=	libbio-${VERSION}
REVISION=	1
CATEGORIES=	devel plan9
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://pdos.lcs.mit.edu/~rsc/software/
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	devel/libutf \
		devel/libfmt

PERMIT_PACKAGE=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
NO_TEST=	Yes

pre-build:
	@cp ${FILESDIR}/Make.OpenBSD ${WRKSRC}

.include <bsd.port.mk>
