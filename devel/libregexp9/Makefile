# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:10 espie Exp $

COMMENT=	Simple regular expression library from Plan 9

VERSION=	2.0
DISTNAME=	libregexp9-${VERSION}
CATEGORIES=	devel plan9
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://pdos.lcs.mit.edu/~rsc/software/
MAINTAINER=	Markus Friedl <markus@openbsd.org>
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	devel/libutf \
		devel/libfmt

PERMIT_PACKAGE_CDROM=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
USE_GROFF =	Yes
TEST_TARGET=	test

pre-build:
	@cp ${FILESDIR}/Make.OpenBSD ${WRKSRC}

.include <bsd.port.mk>
