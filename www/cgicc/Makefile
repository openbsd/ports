# $OpenBSD: Makefile,v 1.3 2002/05/15 17:58:50 espie Exp $

COMMENT=	"c++ compliant CGI applications libraries"

DISTNAME=	cgicc-3.1.5
CATEGORIES=     www devel

NEED_VERSION=	1.427
MASTER_SITES=	${MASTER_SITE_GNU:=cgicc/}

HOMEPAGE=	http://www.gnu.org/software/cgicc/cgicc.html

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/example ${WRKSRC}/support

.include <bsd.port.mk>
