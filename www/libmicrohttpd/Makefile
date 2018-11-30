# $OpenBSD: Makefile,v 1.4 2018/11/30 19:55:19 bcallah Exp $

COMMENT =	tiny embeddable httpd library written in C
DISTNAME =	libmicrohttpd-0.9.61
CATEGORIES =	www

SHARED_LIBS +=	microhttpd                0.2 # 60.0

HOMEPAGE =	https://www.gnu.org/software/libmicrohttpd/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ffi gmp gnutls hogweed iconv idn2 intl nettle p11-kit
WANTLIB += pthread tasn1 unistring z

MASTER_SITES =	${MASTER_SITE_GNU:=libmicrohttpd/}

CONFIGURE_STYLE =	gnu

# Checks these during configure but used only in testing.
BUILD_DEPENDS =	${TEST_DEPENDS}

LIB_DEPENDS =	security/gnutls

TEST_DEPENDS =	misc/zzuf \
		net/curl \
		net/socat

.include <bsd.port.mk>
