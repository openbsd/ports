# $OpenBSD: Makefile,v 1.13 2002/10/27 14:12:47 naddy Exp $
#

COMMENT=	"Ericsson's high-level functional programming language"

VERSION=		47.4.0
DISTNAME=		erlang-${VERSION}
CATEGORIES=     	lang

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://erlang.stacken.kth.se/download/ \
			http://www.erlang.org/download/
EXTRACT_SUFX=		.base.tar.gz

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/erts-${VERSION}/autoconf

ALL_TARGET=		emulator new_libraries
NO_REGRESS=		Yes

# Move the rest of erlang configuration into the port configure step,
# not the build step.
#
post-configure:
	@cd ${WRKSRC}/erts-47.4.0/autoconf && \
		${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@(cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} \
	  ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} autoconf )

.include <bsd.port.mk>
