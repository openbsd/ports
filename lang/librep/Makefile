# $OpenBSD: Makefile,v 1.2 2001/02/21 17:56:26 danh Exp $
# Original from: John Harper <jsh@users.sourceforge.net>

VERSION=	0.13.4
DISTNAME=	librep-${VERSION}
CATEGORIES=	lang
NEED_VERSION=	1.356
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= librep

HOMEPAGE=	http://librep.sourceforge.net/

LIB_DEPENDS=	gdbm.2::databases/gdbm \
		intl.1::devel/gettext

MAINTAINER=	robbie@g7.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	OPSYS_VER VERSION

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static
CONFIGURE_ARGS+= --without-gmp --without-readline
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
