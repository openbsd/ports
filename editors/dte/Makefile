# $OpenBSD: Makefile,v 1.7 2019/12/01 21:58:57 bcallah Exp $

COMMENT =	small and easy to use console text editor
DISTNAME =	dte-1.9.1
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
