# $OpenBSD: Makefile,v 1.4 2001/04/22 23:20:40 avsm Exp $
# Original from: John Harper <jsh@users.sourceforge.net>

.if ${MACHINE_ARCH} == "powerpc"
BROKEN=		A bug in GCC on powerpc
.endif

VERSION=	0.13.4
DISTNAME=	librep-${VERSION}
CATEGORIES=	lang
NEED_VERSION=	1.356
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= librep

HOMEPAGE=	http://librep.sourceforge.net/

LIB_DEPENDS=	gdbm.2::databases/gdbm \
		intl.1::devel/gettext

MAINTAINER=	Robbie Gates <robbie@g7.org>

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
