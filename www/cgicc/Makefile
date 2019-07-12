# $OpenBSD: Makefile,v 1.28 2019/07/12 20:50:18 sthen Exp $

COMMENT=	c++ compliant CGI applications libraries

DISTNAME=	cgicc-3.2.16
REVISION =	2

CATEGORIES=	www devel
SHARED_LIBS=	cgicc	5.0
MODGNU_SHARED_LIBS=cgicc ''

MASTER_SITES=	${MASTER_SITE_GNU:=cgicc/}
HOMEPAGE=	https://www.gnu.org/software/cgicc/cgicc.html

# LGPL
PERMIT_PACKAGE=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-static

FAKE_FLAGS=	docdir=${PREFIX}/share/doc/cgicc

.include <bsd.port.mk>
