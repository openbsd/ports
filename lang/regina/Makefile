# $OpenBSD: Makefile,v 1.3 2020/05/20 15:12:03 bcallah Exp $

V =		3.9.3
COMMENT =	ANSI-compliant interpreter for REXX language (regina-rexx)
DISTNAME =	regina-rexx-${V}
PKGNAME =	regina-${V}
CATEGORIES =	lang

SHARED_LIBS +=	regina                    1.0 # 1.0

HOMEPAGE =	https://regina-rexx.sourceforge.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c curses m pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=regina-rexx/}

CONFIGURE_STYLE =	gnu

FAKE_FLAGS =	sysconfdir="${PREFIX}/share/Regina-REXX"

NO_TEST =	Yes

pre-configure:
	sed -i 's,$${LIBregina_VERSION},${LIBregina_VERSION},g' \
		${WRKSRC}/configure ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
