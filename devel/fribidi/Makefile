# $OpenBSD: Makefile,v 1.28 2019/11/10 21:44:06 ajacoutot Exp $

COMMENT=		library implementing the Unicode Bidirectional Algorithm

V=			1.0.7
REVISION=		2

GH_PROJECT=		fribidi
GH_ACCOUNT=		fribidi
GH_TAGNAME=		v${V}

CATEGORIES=		devel

SHARED_LIBS += fribidi                   3.0 # 0.4.0

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += c

MODULES=		devel/meson

DEBUG_PACKAGES=		${BUILD_PACKAGES}

USE_GMAKE=		Yes

# needs c2man
CONFIGURE_ARGS=		-Ddocs=false

TEST_DEPENDS=		${BASE_PKGPATH}=${V}

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/fribidi-config ${PREFIX}/bin

.include <bsd.port.mk>
