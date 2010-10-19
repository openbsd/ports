# $OpenBSD: Makefile,v 1.4 2010/10/19 07:54:21 espie Exp $

COMMENT =		fast C implementation of Markdown

DISTNAME =		discount-1.6.6
CATEGORIES =		textproc

HOMEPAGE =		http://www.pell.portland.or.us/~orc/Code/markdown/

MAINTAINER =		Scott Vokes <vokes.s@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c

# Stupid github.
MASTER_SITES =		http://distfiles.nl/
WRKDIST = 		${WRKDIR}/Orc-discount-9dabdb8

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	configure.sh
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

BUILD_DEPENDS = 	::archivers/gtar
TAR =			${LOCALBASE}/bin/gtar

INSTALL_TARGET =	install.everything
REGRESS_TARGET =	test
USE_GROFF =	Yes

pre-configure:
	@perl -pi -e 's,\./markdown,\./discount,' ${WRKSRC}/tests/*.t

.include <bsd.port.mk>
