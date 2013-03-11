# $OpenBSD: Makefile,v 1.6 2013/03/11 11:42:41 espie Exp $

COMMENT =		fast C implementation of Markdown

DISTNAME =		discount-1.6.6
CATEGORIES =		textproc

HOMEPAGE =		http://www.pell.portland.or.us/~orc/Code/markdown/

MAINTAINER =		Scott Vokes <vokes.s@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c

# Stupid github.
MASTER_SITES =		http://distfiles.nl/
WRKDIST = 		${WRKDIR}/Orc-discount-9dabdb8

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	configure.sh
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

BUILD_DEPENDS = 	archivers/gtar
TAR =			${LOCALBASE}/bin/gtar

INSTALL_TARGET =	install.everything
TEST_TARGET =	test
USE_GROFF =		Yes

pre-configure:
	@perl -pi -e 's,\./markdown,\./discount,' ${WRKSRC}/tests/*.t

.include <bsd.port.mk>
