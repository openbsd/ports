# $OpenBSD: Makefile,v 1.1.1.1 2003/02/16 14:58:49 markus Exp $

COMMENT=	"Simple buffered I/O library from Plan 9"

VERSION=	2.0
DISTNAME=	libbio-${VERSION}
CATEGORIES=	devel plan9
MASTER_SITES=	http://pdos.lcs.mit.edu/~rsc/software/
HOMEPAGE=	http://pdos.lcs.mit.edu/~rsc/software/
MAINTAINER=	Markus Friedl <markus@openbsd.org>
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	utf::devel/libutf \
		fmt::devel/libfmt

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

.include <bsd.port.mk>
