# $OpenBSD: Makefile,v 1.2 2019/07/12 20:47:22 sthen Exp $

V =		3.9.1
COMMENT =	ANSI-compliant interpreter for REXX language (regina-rexx)
DISTNAME =	Regina-REXX-${V}
PKGNAME =	regina-${V}
CATEGORIES =	lang

SHARED_LIBS +=	regina                    0.0 # 0.0

HOMEPAGE =	https://regina-rexx.sourceforge.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=regina-rexx/}

CONFIGURE_STYLE =	gnu

FAKE_FLAGS =	sysconfdir="${PREFIX}/share/Regina-REXX"

NO_TEST =	Yes

pre-configure:
	sed -i 's,$${LIBregina_VERSION},${LIBregina_VERSION},g' \
		${WRKSRC}/configure ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
