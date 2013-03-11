# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:10 espie Exp $

COMMENT=	UTF8 support library from Plan 9

VERSION=	2.0
DISTNAME=	libutf-${VERSION}
CATEGORIES=	devel plan9
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://pdos.lcs.mit.edu/~rsc/software/
MAINTAINER=	Markus Friedl <markus@openbsd.org>
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	Yes

USE_GROFF =	Yes
NO_TEST=	Yes
FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

pre-build:
	@cp ${FILESDIR}/Make.OpenBSD ${WRKSRC}

.include <bsd.port.mk>
