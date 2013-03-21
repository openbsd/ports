# $OpenBSD: Makefile,v 1.18 2013/03/21 08:48:55 ajacoutot Exp $

COMMENT=	c++ compliant CGI applications libraries

DISTNAME=	cgicc-3.2.1
REVISION=	3
CATEGORIES=	www devel
SHARED_LIBS=	cgicc	5.0
MODGNU_SHARED_LIBS=cgicc ''

MASTER_SITES=	${MASTER_SITE_GNU:=cgicc/}
HOMEPAGE=	http://www.gnu.org/software/cgicc/cgicc.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m stdc++


CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/example ${WRKSRC}/support

FAKE_FLAGS=	docdir=${DESTDIR}${PREFIX}/share/doc/cgicc

.include <bsd.port.mk>
