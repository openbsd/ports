# $OpenBSD: Makefile,v 1.4 2014/05/23 12:37:17 sthen Exp $

COMMENT=	transparent and scalable SSL/TLS interception

DISTNAME=	sslsplit-0.4.7
REVISION=	2
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security

HOMEPAGE=	https://www.roe.ch/SSLsplit

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# SSLsplit: BSD, khash.h (header-based library): MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto event_core event_extra event_openssl event_pthreads
WANTLIB += pthread ssl

MASTER_SITES=	https://mirror.roe.ch/rel/sslsplit/

LIB_DEPENDS=	devel/libevent2
# following is expected with MALLOC_FLAGS J:
# "cert.t.c:66:F:cert_refcount_inc:cert_refcount_inc_01:0: refcount mismatch"
# the test deliberately does a use-after-free
TEST_DEPENDS=	devel/check

USE_GMAKE=	Yes

MAKE_FILE=	GNUmakefile

.include <bsd.port.mk>
