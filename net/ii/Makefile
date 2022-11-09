COMMENT=		minimalist IRC client

DISTNAME=		ii-2.0
CATEGORIES=		net

HOMEPAGE=		https://tools.suckless.org/ii
MASTER_SITES=		https://dl.suckless.org/tools/
MASTER_SITES0=		${HOMEPAGE}/patches/tls/
MASTER_SITES1=		${HOMEPAGE}/patches/ucspi/

MAINTAINER=		Jan Klemkow <j.klemkow@wemelug.de>

# MIT/X
PERMIT_PACKAGE=		Yes

# uses pledge()
WANTLIB=		c

NO_TEST=		Yes

FLAVORS=		ucspi
FLAVOR?=

# patches from https://tools.suckless.org/ii/patches
PATCH_DIST_STRIP=	-p1

.if ${FLAVOR} == "ucspi"
# adds unix client server programming interface support
PATCHFILES+=		${DISTNAME}-ucspi.diff:1
RUN_DEPENDS=		net/ucspi-tools
.else
# adds tls encryption support
PATCHFILES+=		${DISTNAME}-tls.diff:0
WANTLIB+=		tls
.endif

SUPDISTFILES+=		${DISTNAME}-tls.diff:0
SUPDISTFILES+=		${DISTNAME}-ucspi.diff:1

FAKE_FLAGS=		MANPREFIX=${PREFIX}/man

.include <bsd.port.mk>
