COMMENT=	c++ compliant CGI applications libraries

DISTNAME =	cgicc-3.2.19
REVISION =	0

CATEGORIES=	www devel
SHARED_LIBS=	cgicc	5.0
MODGNU_SHARED_LIBS=cgicc ''

MASTER_SITES=	${MASTER_SITE_GNU:=cgicc/}
HOMEPAGE=	https://www.gnu.org/software/cgicc/cgicc.html

# LGPL
PERMIT_PACKAGE=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE = 	autoconf
AUTOCONF_VERSION = 	2.69
CONFIGURE_ARGS =	--enable-static
CONFIGURE_ENV =		ac_cv_prog_DOXYGEN=/bin/echo

FAKE_FLAGS=	docdir=${PREFIX}/share/doc/cgicc

.include <bsd.port.mk>
