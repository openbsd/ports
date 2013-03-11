# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:09 espie Exp $

COMMENT=	Simple buffered I/O library from Plan 9

VERSION=	2.0
DISTNAME=	libbio-${VERSION}
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
NO_TEST=	Yes

pre-build:
	@cp ${FILESDIR}/Make.OpenBSD ${WRKSRC}

.include <bsd.port.mk>
