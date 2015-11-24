# $OpenBSD: Makefile,v 1.37 2015/11/24 09:11:04 jasper Exp $

# XXX This will panic any vax
NOT_FOR_ARCHS=	vax

COMMENT=	shared memory lib for apps with pre-forked process model

DISTNAME=	mm-1.4.2
SHARED_LIBS +=	mm                   13.22    # 14.22

CATEGORIES=	devel
MASTER_SITES=	https://distfiles.nl/ \
		ftp://ftp.ossp.org/pkg/lib/mm/

HOMEPAGE=	http://www.ossp.org/pkg/lib/mm/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

TEST_TARGET=	test

.include <bsd.port.mk>
