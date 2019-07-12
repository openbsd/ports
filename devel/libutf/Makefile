# $OpenBSD: Makefile,v 1.9 2019/07/12 20:44:40 sthen Exp $

COMMENT=	UTF8 support library from Plan 9

VERSION=	2.0
DISTNAME=	libutf-${VERSION}
REVISION=	1
CATEGORIES=	devel plan9
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://pdos.lcs.mit.edu/~rsc/software/
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE=	Yes

NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

pre-build:
	@cp ${FILESDIR}/Make.OpenBSD ${WRKSRC}

.include <bsd.port.mk>
