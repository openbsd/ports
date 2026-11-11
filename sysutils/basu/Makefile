COMMENT=		sd-bus library extracted from systemd

V=			0.2.1
DISTNAME=		basu-${V}

SHARED_LIBS +=		basu                      0.0 # 0

CATEGORIES=		sysutils devel

HOMEPAGE=		https://sr.ht/~emersion/basu/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += c

SITES=			https://git.sr.ht/~emersion/basu/refs/download/v${V}/

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gperf

CONFIGURE_ARGS=		-Daudit=disabled \
			-Dlibcap=disabled

.include <bsd.port.mk>
