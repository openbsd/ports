# $OpenBSD: Makefile,v 1.24 2003/04/29 02:03:53 margarida Exp $

# XXX This will panic any vax
NOT_FOR_ARCHS=	vax

COMMENT=	"shared memory lib for apps with pre-forked process model"

DISTNAME=	mm-1.3.0
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.ossp.org/pkg/lib/mm/

HOMEPAGE=	http://www.ossp.org/pkg/lib/mm/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

REGRESS_TARGET=	test

.include <bsd.port.mk>
