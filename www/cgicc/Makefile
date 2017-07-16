# $OpenBSD: Makefile,v 1.24 2017/07/16 19:19:03 espie Exp $

COMMENT=	c++ compliant CGI applications libraries

DISTNAME=	cgicc-3.2.16

CATEGORIES=	www devel
SHARED_LIBS=	cgicc	5.0
MODGNU_SHARED_LIBS=cgicc ''

MASTER_SITES=	${MASTER_SITE_GNU:=cgicc/}
HOMEPAGE=	https://www.gnu.org/software/cgicc/cgicc.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-static

FAKE_FLAGS=	docdir=${PREFIX}/share/doc/cgicc

.include <bsd.port.mk>
