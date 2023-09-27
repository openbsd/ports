COMMENT =		unicode text to postscript converter

V =			1.2
DISTNAME =		u2ps-$V
CATEGORIES =		print
HOMEPAGE =		https://github.com/arsv/u2ps/
MAINTAINER =		Alexander Arkhipov <aa@manpager.net>

# GPLv3
PERMIT_PACKAGE =	Yes

SITES =			https://github.com/arsv/u2ps/releases/download/$V/

WANTLIB +=		c

RUN_DEPENDS =		print/ghostscript/gnu

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix=${TRUEPREFIX} \
			--mandir=${TRUEPREFIX}/man
ALL_TARGET =		default

.include <bsd.port.mk>
