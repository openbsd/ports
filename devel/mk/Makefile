# $OpenBSD: Makefile,v 1.1.1.1 2003/02/16 15:00:31 markus Exp $

COMMENT=	"Streamlined replacement for make"

VERSION=	2.0
DISTNAME=	mk-${VERSION}
CATEGORIES=	devel plan9
MASTER_SITES=	http://pdos.lcs.mit.edu/~rsc/software/
HOMEPAGE=	http://pdos.lcs.mit.edu/~rsc/software/
MAINTAINER=	Markus Friedl <markus@openbsd.org>
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	fmt::devel/libfmt \
		bio::devel/libbio \
		regexp9::devel/libregexp9

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

.include <bsd.port.mk>
