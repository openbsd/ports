# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:11 espie Exp $

COMMENT=	Streamlined replacement for make

VERSION=	2.0
DISTNAME=	mk-${VERSION}
REVISION=	1
CATEGORIES=	devel plan9
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://pdos.lcs.mit.edu/~rsc/software/
MAINTAINER=	Markus Friedl <markus@openbsd.org>
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	devel/libfmt \
		devel/libbio \
		devel/libregexp9 \
		devel/libutf

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
USE_GROFF =	Yes
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"

pre-build:
	@cp ${FILESDIR}/Make.OpenBSD ${WRKSRC}

.include <bsd.port.mk>
