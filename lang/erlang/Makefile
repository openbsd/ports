# $OpenBSD: Makefile,v 1.1.1.1 1998/12/11 00:20:44 marc Exp $
#

DISTNAME=		erlang-47.4.0
CATEGORIES=     	lang

MAINTAINER=		marc@openbsd.org

MASTER_SITES=		http://erlang.stacken.kth.se/download/ \
			http://www.erlang.org/download/
EXTRACT_SUFX=		.base.tar.gz

USE_GMAKE=		yes
USE_AUTOCONF=		yes

ALL_TARGET=		emulator new_libraries

# Move the rest of erlang configuration into the port configure step,
# not the build step.
#
post-configure:
	@cd ${WRKSRC}/erts-47.4.0/autoconf && \
		${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@(cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} \
	  ${MAKE_PROGRAM} ${MAKE_FLAGS} ${MAKEFILE} autoconf )

.include <bsd.port.mk>
