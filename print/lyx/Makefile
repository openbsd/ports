# $OpenBSD: Makefile,v 1.5 2000/02/12 08:02:30 turan Exp $

DISTNAME=	lyx-1.0.0
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.via.ecp.fr/pub/lyx/stable/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

BUILD_DEPENDS=	latex:${PORTSDIR}/print/teTeX/base
RUN_DEPENDS=	latex:${PORTSDIR}/print/teTeX/base \
		ispell:${PORTSDIR}/textproc/ispell
LIB_DEPENDS=	xforms:${PORTSDIR}/x11/xforms

GNU_CONFIGURE=	yes
STRIP=
CONFIGURE_ARGS+=--with-extra-lib=${X11BASE}/lib --with-extra-inc="${X11BASE}/include ${X11BASE}/include/X11"

post-install:
	@strip ${PREFIX}/bin/lyx

.include <bsd.port.mk>
