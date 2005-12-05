# $OpenBSD: Makefile,v 1.1.1.1 2005/12/05 16:36:31 espie Exp $

COMMENT=	"slib guile adapter"

CATEGORIES=	devel

DISTFILES=
DISTNAME=	slib-guile-0.0


MAINTAINER=	Marc Espie <espie@openbsd.org>

# Stub port
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

BUILD_DEPENDS=	::devel/slib \
		::lang/guile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/guile
	# This will fail after generating the correct file...
	-DESTDIR=${WRKINST} ${LOCALBASE}/bin/guile -c "(use-modules (ice-9 slib)) (require 'new-catalog)"

.include <bsd.port.mk>
