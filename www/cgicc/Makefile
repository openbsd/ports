# $OpenBSD: Makefile,v 1.1.1.1 2001/07/25 03:03:31 shell Exp $

COMMENT=	"c++ compliant CGI applications libraries"

DISTNAME=	cgicc-3.1.5
CATEGORIES=     www devel

NEED_VERSION=	1.427
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	cgicc

HOMEPAGE=	http://www.gnu.org/software/cgicc/cgicc.html

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

.include <bsd.port.mk>
