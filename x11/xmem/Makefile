COMMENT =	display memory/swap usage for X11

V =		1.28
DISTNAME =	xmem_${V:S/./_/}
PKGNAME	=	xmem-${V}
CATEGORIES =	sysutils x11

HOMEPAGE =	https://git.sdf.org/bch/xmem
SITES =		${HOMEPAGE}/archive/

MAINTAINER =	Michael <michi+openbsd@dataswamp.org>

# MIT
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =	X11 Xt Xaw Xmu c kvm

WRKSRC =	${WRKDIR}/xmem

NO_TEST =	Yes

.include <bsd.port.mk>
