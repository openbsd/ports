# $OpenBSD: Makefile,v 1.10 2012/02/21 22:19:31 sthen Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
USE_GROFF =	Yes
NO_REGRESS=	Yes
MAKE_FLAGS=	CC="${CC}"

pre-build:
	@cp ${FILESDIR}/Make.OpenBSD ${WRKSRC}

.include <bsd.port.mk>
