# $OpenBSD: Makefile,v 1.13 2000/10/22 14:03:41 espie Exp $

DISTNAME=	lyx-1.0.0
CATEGORIES=	print
NEED_VERSION=	 1.230
FAKE=No
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

GNU_CONFIGURE=	Yes
STRIP=
CONFIGURE_ARGS+=--with-extra-lib=${LOCALBASE}/lib --with-extra-inc="${LOCALBASE}/include ${LOCALBASE}/include/X11"

post-install:
	@strip ${PREFIX}/bin/lyx

.include <bsd.port.mk>
