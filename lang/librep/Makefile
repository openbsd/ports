# $OpenBSD: Makefile,v 1.17 2004/08/10 09:14:47 xsa Exp $

COMMENT=	"Emacs Lisp-like runtime library"

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

VERSION=	0.16.2
DISTNAME=	librep-${VERSION}
CATEGORIES=	lang

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=librep/}

HOMEPAGE=	http://librep.sourceforge.net/

MODULES=	devel/gettext
LIB_DEPENDS=	gdbm.2::databases/gdbm

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GNU_ARCH=	${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OPSYS_VER}
SUBST_VARS=	GNU_ARCH VERSION

.include <bsd.own.mk>

USE_GCC3?= No

.if ${MACHINE_ARCH:Mpowerpc} && ${USE_GCC3:L} == "no"
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
