# $OpenBSD: Makefile,v 1.1.1.1 2018/09/10 20:50:56 fcambus Exp $

COMMENT =	simple text-based game of interstellar trading

DISTNAME =	trader-7.12

CATEGORIES =	games

HOMEPAGE =	https://www.zap.org.au/software/trader/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c curses iconv intl

MASTER_SITES =	https://ftp.zap.org.au/pub/trader/unix/

LIB_DEPENDS =	converters/libiconv \
		devel/gettext

CONFIGURE_STYLE = gnu

post-patch:
	@cp ${FILESDIR}/strfmon* ${WRKSRC}/src

post-install:
	@rm -rf ${PREFIX}/share/applications ${PREFIX}/share/icons

.include <bsd.port.mk>
