# $OpenBSD: Makefile,v 1.7 2001/10/25 03:04:18 brad Exp $
# Original from: John Harper <jsh@users.sourceforge.net>

COMMENT=	"Emacs Lisp-like runtime library"

.if ${MACHINE_ARCH} == "powerpc"
BROKEN=		A bug in GCC on powerpc
.endif

VERSION=	0.13.4
DISTNAME=	librep-${VERSION}
CATEGORIES=	lang
NEED_VERSION=	1.474
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= librep

HOMEPAGE=	http://librep.sourceforge.net/

MODULES=	gettext
LIB_DEPENDS=	gdbm.2::databases/gdbm

MAINTAINER=	Robbie Gates <robbie@g7.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	OPSYS_VER VERSION

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static
CONFIGURE_ARGS+= --without-gmp
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
