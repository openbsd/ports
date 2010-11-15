# $OpenBSD: Makefile,v 1.28 2010/11/15 00:22:49 espie Exp $

COMMENT=	Simulation Program for Integrated Circuit Electronics

V=			3f5
DISTNAME=		spice${V}
PKGNAME=		spice-${V}
REVISION=		3
CATEGORIES=     	cad

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xaw Xext Xmu Xt c m pthread-stubs termlib xcb

MASTER_SITES=		http://embedded.eecs.berkeley.edu/pubs/downloads/spice/
HOMEPAGE=		http://bwrc.eecs.berkeley.edu/Classes/IcBook/SPICE/

USE_GROFF =		Yes
MAKE_ENV=		MAKE_PROGRAM='${MAKE_PROGRAM}' CC="${CC}"

NO_REGRESS=		Yes

do-configure:
	@cp ${FILESDIR}/Makefile ${WRKSRC}
	@cp ${FILESDIR}/OpenBSD ${WRKSRC}/conf

.include <bsd.port.mk>
