# $OpenBSD: Makefile,v 1.3 2019/07/12 20:47:16 sthen Exp $

COMMENT =	GNU Simula compiler
DISTNAME =	cim-5.1
REVISION =	0
CATEGORIES =	lang

SHARED_LIBS +=	cim                       0.0 # 3.0

HOMEPAGE =	https://www.gnu.org/software/cim/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += c m

MASTER_SITES =	${MASTER_SITE_GNU:=cim/}

CONFIGURE_STYLE =	gnu

# It's really really not C99.
# SCFLAGS is what cim calls cc with.
MAKE_FLAGS =	CFLAGS="${CFLAGS} -std=gnu89" \
		SCFLAGS="${CFLAGS} -std=gnu89 -w"

.include <bsd.port.mk>
