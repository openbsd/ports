# $OpenBSD: Makefile,v 1.39 2016/03/11 19:59:13 naddy Exp $

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
CONFIGURE_ARGS+= --enable-static

TEST_TARGET=	test

.include <bsd.port.mk>
