# $OpenBSD: Makefile,v 1.5 2000/03/17 02:07:28 turan Exp $
#

DISTNAME=		erlang-47.4.0
CATEGORIES=     	lang

MAINTAINER=		ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://erlang.stacken.kth.se/download/ \
			http://www.erlang.org/download/
EXTRACT_SUFX=		.base.tar.gz
NEED_VERSION=		1.210

USE_GMAKE=		Yes
USE_AUTOCONF=		Yes

ALL_TARGET=		emulator new_libraries

# Move the rest of erlang configuration into the port configure step,
# not the build step.
#
post-configure:
	@cd ${WRKSRC}/erts-47.4.0/autoconf && \
		${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@(cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} \
	  ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} autoconf )

.include <bsd.port.mk>
