# $OpenBSD: Makefile,v 1.3 1999/04/09 02:27:16 brad Exp $

DISTNAME=	lyx-1.0.0
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.via.ecp.fr/pub/lyx/stable/

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	latex:${PORTSDIR}/print/teTeX
RUN_DEPENDS=	latex:${PORTSDIR}/print/teTeX \
		ispell:${PORTSDIR}/textproc/ispell
LIB_DEPENDS=	xforms:${PORTSDIR}/x11/xforms

GNU_CONFIGURE=	yes
STRIP=
CONFIGURE_ARGS+=--with-extra-lib=${X11BASE}/lib --with-extra-inc="${X11BASE}/include ${X11BASE}/include/X11"

post-install:
	@strip ${PREFIX}/bin/lyx

.include <bsd.port.mk>
