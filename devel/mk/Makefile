# $OpenBSD: Makefile,v 1.13 2019/05/01 20:12:52 danj Exp $

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
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"

pre-build:
	@cp ${FILESDIR}/Make.OpenBSD ${WRKSRC}

.include <bsd.port.mk>
