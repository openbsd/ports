# $OpenBSD: Makefile,v 1.10 2005/09/23 19:41:45 pvalchev Exp $

COMMENT=	"c++ compliant CGI applications libraries"

DISTNAME=	cgicc-3.2.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=     www devel

MASTER_SITES=	${MASTER_SITE_GNU:=cgicc/}
HOMEPAGE=	http://www.gnu.org/software/cgicc/cgicc.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/example ${WRKSRC}/support

FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} \
		docdir=${DESTDIR}${PREFIX}/share/doc/cgicc

.include <bsd.port.mk>
