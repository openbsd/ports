# $OpenBSD: Makefile,v 1.15 2001/02/22 10:49:14 espie Exp $

DISTNAME=	lyx-1.0.0
CATEGORIES=	print
NEED_VERSION=	1.305
FAKE=No
BROKEN=		"Completely outdated version, not faked"
MASTER_SITES=	ftp://ftp.via.ecp.fr/pub/lyx/stable/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	latex::print/teTeX/base
RUN_DEPENDS=	latex::print/teTeX/base \
		ispell::textproc/ispell
LIB_DEPENDS=	xforms::x11/xforms

CONFIGURE_STYLE=	gnu
STRIP=
CONFIGURE_ARGS+=--with-extra-lib=${LOCALBASE}/lib --with-extra-inc="${LOCALBASE}/include ${LOCALBASE}/include/X11"

post-install:
	@strip ${PREFIX}/bin/lyx

.include <bsd.port.mk>
