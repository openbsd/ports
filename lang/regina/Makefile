# $OpenBSD: Makefile,v 1.4 2021/11/23 13:50:27 bcallah Exp $

V =		3.9.4
COMMENT =	ANSI-compliant interpreter for REXX language (regina-rexx)
DISTNAME =	regina-rexx-${V}
PKGNAME =	regina-${V}
CATEGORIES =	lang

SHARED_LIBS +=	regina                    2.0 # 2.0

HOMEPAGE =	https://regina-rexx.sourceforge.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c curses m pthread readline

MASTER_SITES =	https://github.com/ibara/ports/releases/download/v1.0/

CONFIGURE_STYLE =	gnu

USE_GMAKE =	Yes

FAKE_FLAGS =	sysconfdir="${PREFIX}/share/Regina-REXX"

pre-configure:
	sed -i 's,$${LIBregina_VERSION},${LIBregina_VERSION},g' \
		${WRKSRC}/configure ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
