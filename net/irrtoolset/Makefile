# $OpenBSD: Makefile,v 1.6 2017/07/26 22:45:27 sthen Exp $

COMMENT=	toolset for internet routing registries

V=		5.0.1
REVISION =	2
DISTNAME=	irrtoolset-$V

CATEGORIES=	net

HOMEPAGE=	http://irrtoolset.isc.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m readline ${COMPILER_LIBCXX} termcap

MASTER_SITES=	http://ftp.isc.org/isc/IRRToolSet/IRRToolSet-$V/ \
		ftp://ftp.isc.org/isc/IRRToolSet/IRRToolSet-$V/

BUILD_DEPENDS=	devel/bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
