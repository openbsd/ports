# $OpenBSD: Makefile,v 1.14 2019/07/12 20:44:42 sthen Exp $

COMMENT=	Streamlined replacement for make

VERSION=	2.0
DISTNAME=	mk-${VERSION}
REVISION=	3
CATEGORIES=	devel plan9
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://pdos.lcs.mit.edu/~rsc/software/
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	devel/libfmt \
		devel/libbio \
		devel/libregexp9 \
		devel/libutf

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	c

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"

pre-build:
	@cp ${FILESDIR}/Make.OpenBSD ${WRKSRC}

.include <bsd.port.mk>
