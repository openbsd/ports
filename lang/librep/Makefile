# $OpenBSD: Makefile,v 1.13 2003/05/15 05:26:58 margarida Exp $

COMMENT=	"Emacs Lisp-like runtime library"

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

VERSION=	0.16.2
DISTNAME=	librep-${VERSION}
CATEGORIES=	lang

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=librep/}

HOMEPAGE=	http://librep.sourceforge.net/

MODULES=	gettext
LIB_DEPENDS=	gdbm.2::databases/gdbm

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	OPSYS_VER VERSION

.if ${MACHINE_ARCH:Msparc64}
CFLAGS+=	-O0
.endif

.if ${MACHINE_ARCH:Mpowerpc}
PATCH_LIST=	gcc-* patch-*
.endif

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static
CONFIGURE_ARGS+= --without-gmp
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

.include <bsd.port.mk>
