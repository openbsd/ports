# $OpenBSD: Makefile,v 1.11 2002/03/13 16:40:27 brad Exp $

COMMENT=	"character set conversion library"

DISTNAME=	libiconv-1.7
CATEGORIES=	converters devel
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= libiconv

HOMEPAGE=	http://www.gnu.org/software/libiconv/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/autoconf ${WRKSRC}/libcharset/autoconf
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

do-regress:
	@cd ${WRKBUILD}/tests && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} check

.include <bsd.port.mk>
