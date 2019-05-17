# $OpenBSD: Makefile,v 1.8 2019/05/17 16:19:40 sthen Exp $

COMMENT=	toolset for internet routing registries

V=		5.0.1
REVISION=	4
DISTNAME=	irrtoolset-$V

CATEGORIES=	net

HOMEPAGE=	http://irrtoolset.isc.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses m readline

COMPILER =	base-clang ports-gcc base-gcc

MASTER_SITES=	http://ftp.isc.org/isc/IRRToolSet/IRRToolSet-$V/ \
		ftp://ftp.isc.org/isc/IRRToolSet/IRRToolSet-$V/

BUILD_DEPENDS=	devel/bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
