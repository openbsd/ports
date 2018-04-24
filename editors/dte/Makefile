# $OpenBSD: Makefile,v 1.1.1.1 2018/04/24 15:35:56 bcallah Exp $

COMMENT =	small and easy to use console text editor
DISTNAME =	dte-1.6
CATEGORIES =	editors

HOMEPAGE =	https://craigbarnes.gitlab.io/dte/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses iconv

MASTER_SITES =	https://craigbarnes.gitlab.io/dist/dte/

LIB_DEPENDS =	converters/libiconv

USE_GMAKE =	Yes
MAKE_FILE =	GNUmakefile
MAKE_FLAGS =	V=1 prefix="${PREFIX}" mandir="${PREFIX}/man"

.include <bsd.port.mk>
