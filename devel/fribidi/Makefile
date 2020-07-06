# $OpenBSD: Makefile,v 1.31 2020/07/06 07:52:31 ajacoutot Exp $

COMMENT=		library implementing the Unicode Bidirectional Algorithm

V=			1.0.10

GH_PROJECT=		fribidi
GH_ACCOUNT=		fribidi
GH_TAGNAME=		v${V}

CATEGORIES=		devel

SHARED_LIBS += fribidi                   3.1 # 0.4.0

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += c

MODULES=		devel/meson

DEBUG_PACKAGES=		${BUILD_PACKAGES}

USE_GMAKE=		Yes

# needs c2man
CONFIGURE_ARGS=		-Ddocs=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

TEST_DEPENDS=		${BASE_PKGPATH}=${V}

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/fribidi-config ${PREFIX}/bin

.include <bsd.port.mk>
