# $OpenBSD: Makefile,v 1.11 2005/12/30 22:26:50 sturm Exp $

COMMENT=	"c++ compliant CGI applications libraries"

DISTNAME=	cgicc-3.2.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=     www devel
SHARED_LIBS=	cgicc	4.0
MODGNU_SHARED_LIBS=cgicc ''

MASTER_SITES=	${MASTER_SITE_GNU:=cgicc/}
HOMEPAGE=	http://www.gnu.org/software/cgicc/cgicc.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/example ${WRKSRC}/support

FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} \
		docdir=${DESTDIR}${PREFIX}/share/doc/cgicc

.include <bsd.port.mk>
