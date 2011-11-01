# $OpenBSD: Makefile,v 1.31 2011/11/01 19:00:25 jasper Exp $

COMMENT=	Simulation Program for Integrated Circuit Electronics

V=			3f5
DISTNAME=		spice${V}
PKGNAME=		spice-${V}
REVISION=		5
CATEGORIES=     	cad

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xaw Xext Xmu Xt c m termlib

MASTER_SITES=		http://embedded.eecs.berkeley.edu/pubs/downloads/spice/
HOMEPAGE=		http://bwrc.eecs.berkeley.edu/Classes/IcBook/SPICE/

MAKE_ENV=		MAKE_PROGRAM='${MAKE_PROGRAM}' CC="${CC}"

USE_GROFF=		Yes
NO_REGRESS=		Yes

do-configure:
	@cp ${FILESDIR}/Makefile ${WRKSRC}
	@cp ${FILESDIR}/OpenBSD ${WRKSRC}/conf

.include <bsd.port.mk>
