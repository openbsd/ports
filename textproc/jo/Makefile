# $OpenBSD: Makefile,v 1.2 2016/03/11 22:52:03 awolk Exp $

COMMENT =	JSON output from a shell

V =		1.0
DISTNAME =	jo-$V

CATEGORIES =	textproc

HOMEPAGE =	http://jpmens.net/2016/03/05/a-shell-command-to-create-json-jo/

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =	c m

MASTER_SITES =	https://github.com/jpmens/jo/releases/download/v$V/

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
