# $OpenBSD: Makefile,v 1.21 2001/03/26 15:58:17 todd Exp $

COMMENT=	"GNU make"
DISTNAME=	make-3.79.1
PKGNAME=	gmake-3.79.1
CATEGORIES=	devel
NEED_VERSION=	1.364
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= make

HOMEPAGE=	http://www.gnu.org/software/make/

LIB_DEPENDS=	intl.1::devel/gettext

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --program-prefix="g"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@rm -f ${WRKSRC}/make.info*

post-install:
	@chmod g-s ${PREFIX}/bin/gmake
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/gmake

.include <bsd.port.mk>
