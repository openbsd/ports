# $OpenBSD: Makefile,v 1.4 2019/11/14 15:51:59 fcambus Exp $

COMMENT =	simple text-based game of interstellar trading

DISTNAME =	trader-7.13

CATEGORIES =	games

HOMEPAGE =	https://www.zap.org.au/software/trader/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c curses iconv intl

MASTER_SITES =	https://ftp.zap.org.au/pub/trader/unix/

LIB_DEPENDS =	converters/libiconv \
		devel/gettext,-runtime

CONFIGURE_STYLE = gnu

# Prevent configure to error out because we have no <monetary.h>
CONFIGURE_ENV += ac_cv_header_monetary_h=yes

post-patch:
	@cp ${FILESDIR}/strfmon* ${WRKSRC}/src

post-install:
	@rm -rf ${PREFIX}/share/applications ${PREFIX}/share/icons

.include <bsd.port.mk>
