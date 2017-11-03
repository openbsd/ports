# $OpenBSD: Makefile,v 1.1.1.1 2017/11/03 23:51:01 bentley Exp $

COMMENT =	Helsinki finite state transducer

V =		3.13.0
DISTNAME =	hfst-$V

SHARED_LIBS +=  hfst                      0.0 # 50.0

CATEGORIES =	textproc

HOMEPAGE =	http://www.ling.helsinki.fi/kieliteknologia/tutkimus/hfst/

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

MASTER_SITES =		https://github.com/hfst/hfst/releases/download/v$V/

COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
