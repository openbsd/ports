# $OpenBSD: Makefile,v 1.6 2003/01/04 18:19:46 lebel Exp $

COMMENT=	"c++ compliant CGI applications libraries"

DISTNAME=	cgicc-3.2.1
CATEGORIES=     www devel

MASTER_SITES=	${MASTER_SITE_GNU:=cgicc/}
HOMEPAGE=	http://www.gnu.org/software/cgicc/cgicc.html

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/example ${WRKSRC}/support

FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} \
		docdir=${DESTDIR}${PREFIX}/share/doc/cgicc

# gcc3
MODULES=                gcc3
MODGCC3_ARCHES=         sparc64
MODGCC3_LANGS+=         c++

.include <bsd.port.mk>
