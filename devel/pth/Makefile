# $OpenBSD: Makefile,v 1.5 2001/03/26 23:54:42 brad Exp $

COMMENT=	"GNU portable threads"

DISTNAME=	pth-1.4.0
CATEGORIES=	devel
NEED_VERSION=	1.363
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= pth

HOMEPAGE=	http://www.gnu.org/software/pth/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --enable-pthread \
		 --enable-syscall-soft --enable-optimize \
		 --enable-batch \
		 --includedir="${PREFIX}/include/pth" \
		 --libdir="${PREFIX}/lib/pth"

post-build:
	@${ECHO_MSG} "===>  Use 'make test' to run a quick test suite."

test:	build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} test

.include <bsd.port.mk>
