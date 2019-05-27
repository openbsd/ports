# $OpenBSD: Makefile,v 1.6 2019/05/27 12:27:54 fcambus Exp $

COMMENT =	JSON output from a shell

V =		1.2
DISTNAME =	jo-$V

CATEGORIES =	textproc

HOMEPAGE =	https://jpmens.net/2016/03/05/a-shell-command-to-create-json-jo/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =	c m

MASTER_SITES =	https://github.com/jpmens/jo/releases/download/$V/

CONFIGURE_STYLE = gnu

pre-configure:
	# Remove hardcoded optimization (-O2) flag
	@sed -i '/^AM_CFLAGS/ s,-O2,,' ${WRKSRC}/Makefile.*

.include <bsd.port.mk>
