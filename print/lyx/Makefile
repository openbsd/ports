# $OpenBSD: Makefile,v 1.9 2000/03/24 04:02:20 turan Exp $

DISTNAME=	lyx-1.0.0
CATEGORIES=	print
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.via.ecp.fr/pub/lyx/stable/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	latex:print/teTeX/base
RUN_DEPENDS=	latex:print/teTeX/base \
		ispell:textproc/ispell
LIB_DEPENDS=	xforms:x11/xforms

GNU_CONFIGURE=	Yes
STRIP=
CONFIGURE_ARGS+=--with-extra-lib=${X11BASE}/lib --with-extra-inc="${X11BASE}/include ${X11BASE}/include/X11"

post-install:
	@strip ${PREFIX}/bin/lyx

.include <bsd.port.mk>
