# $OpenBSD: Makefile,v 1.6 2019/09/23 13:19:13 bcallah Exp $

COMMENT =	small and easy to use console text editor
DISTNAME =	dte-1.9
CATEGORIES =	editors

HOMEPAGE =	https://craigbarnes.gitlab.io/dte/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += c curses iconv

MASTER_SITES =	https://craigbarnes.gitlab.io/dist/dte/

LIB_DEPENDS =	converters/libiconv

USE_GMAKE =	Yes
MAKE_FILE =	GNUmakefile
MAKE_FLAGS =	V=1 prefix="${PREFIX}" mandir="${PREFIX}/man"

.include <bsd.port.mk>
