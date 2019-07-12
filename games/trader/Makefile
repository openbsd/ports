# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:25 sthen Exp $

COMMENT =	simple text-based game of interstellar trading

DISTNAME =	trader-7.12
REVISION =	0

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

post-patch:
	@cp ${FILESDIR}/strfmon* ${WRKSRC}/src

post-install:
	@rm -rf ${PREFIX}/share/applications ${PREFIX}/share/icons

.include <bsd.port.mk>
