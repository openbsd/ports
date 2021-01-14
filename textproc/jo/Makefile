# $OpenBSD: Makefile,v 1.10 2021/01/14 21:55:22 fcambus Exp $

COMMENT =	JSON output from a shell

V =		1.4
DISTNAME =	jo-$V
REVISION =	0

CATEGORIES =	textproc

HOMEPAGE =	https://jpmens.net/2016/03/05/a-shell-command-to-create-json-jo/

# GPLv2+
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =	c m

MASTER_SITES =	https://github.com/jpmens/jo/releases/download/$V/

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = bashcompdir=${PREFIX}/share/bash-completion/completions

pre-configure:
	# Remove hardcoded optimization (-O2) flag
	@sed -i '/^AM_CFLAGS/ s,-O2,,' ${WRKSRC}/Makefile.*

.include <bsd.port.mk>
