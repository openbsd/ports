# $OpenBSD: Makefile,v 1.3 2016/09/22 12:57:18 fcambus Exp $

COMMENT =	JSON output from a shell

V =		1.0
DISTNAME =	jo-$V
REVISION =	0

CATEGORIES =	textproc

HOMEPAGE =	http://jpmens.net/2016/03/05/a-shell-command-to-create-json-jo/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =	c m

MASTER_SITES =	https://github.com/jpmens/jo/releases/download/v$V/

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
