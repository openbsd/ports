# $OpenBSD: Makefile,v 1.10 2021/08/30 14:02:07 fcambus Exp $

COMMENT =	simple text-based game of interstellar trading

DISTNAME =	trader-7.16
REVISION =	0

CATEGORIES =	games

HOMEPAGE =	https://www.zap.org.au/projects/trader/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c curses iconv intl

MASTER_SITES =	https://ftp.zap.org.au/pub/trader/unix/

LIB_DEPENDS =	converters/libiconv \
		devel/gettext,-runtime

CONFIGURE_STYLE = gnu

# Prevent configure to error out because we have no <monetary.h>
CONFIGURE_ENV += ac_cv_header_monetary_h=yes

post-install:
	@rm -rf ${PREFIX}/share/applications ${PREFIX}/share/icons

.include <bsd.port.mk>
