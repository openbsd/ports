# $OpenBSD: Makefile,v 1.13 2002/06/10 04:41:48 brad Exp $

COMMENT=	"character set conversion library"

DISTNAME=	libiconv-1.8
CATEGORIES=	converters devel
NEED_VERSION=	1.528
MASTER_SITES=	${MASTER_SITE_GNU:=libiconv/}

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
CONFIGURE_ARGS+= --enable-static --enable-extra-encodings
CONFIGURE_ENV=	LDFLAGS="-L${WRKBUILD}/lib/.libs"

do-regress:
	@cd ${WRKBUILD}/tests && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} check

.include <bsd.port.mk>
