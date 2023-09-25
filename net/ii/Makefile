COMMENT=		minimalist IRC client

DISTNAME=		ii-2.0
CATEGORIES=		net

HOMEPAGE=		https://tools.suckless.org/ii
SITES=			https://dl.suckless.org/tools/
SITES.p1=		${HOMEPAGE}/patches/tls/
SITES.p2=		${HOMEPAGE}/patches/ucspi/

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
PATCHFILES.p2+=		${DISTNAME}-ucspi.diff
RUN_DEPENDS=		net/ucspi-tools
.else
# adds tls encryption support
PATCHFILES.p1+=		${DISTNAME}-tls.diff
WANTLIB+=		tls
.endif

SUPDISTFILES.p1+=		${DISTNAME}-tls.diff
SUPDISTFILES.p2+=		${DISTNAME}-ucspi.diff

FAKE_FLAGS=		MANPREFIX=${PREFIX}/man

.include <bsd.port.mk>
