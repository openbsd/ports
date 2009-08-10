# $OpenBSD: Makefile,v 1.24 2009/08/10 06:30:30 kili Exp $

COMMENT=	Simulation Program for Integrated Circuit Electronics

V=			3f5
DISTNAME=		spice${V}
PKGNAME=		spice-${V}p3
CATEGORIES=     	cad

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xaw Xext Xmu Xt c m pthread-stubs termlib xcb

MASTER_SITES=		http://embedded.eecs.berkeley.edu/pubs/downloads/spice/
HOMEPAGE=		http://bwrc.eecs.berkeley.edu/Classes/IcBook/SPICE/

USE_X11=		Yes
MAKE_ENV=		MAKE_PROGRAM='${MAKE_PROGRAM}' CC="${CC}"

NO_REGRESS=		Yes

do-configure:
	@cp ${FILESDIR}/Makefile ${WRKSRC}
	@cp ${FILESDIR}/OpenBSD ${WRKSRC}/conf

.include <bsd.port.mk>
