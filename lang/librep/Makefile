# $OpenBSD: Makefile,v 1.11 2002/10/27 14:12:48 naddy Exp $
# Original from: John Harper <jsh@users.sourceforge.net>

COMMENT=	"Emacs Lisp-like runtime library"

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

.if ${MACHINE_ARCH} == "powerpc"
BROKEN=		A bug in GCC on powerpc
.endif

VERSION=	0.13.4
DISTNAME=	librep-${VERSION}
CATEGORIES=	lang

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=librep/}

HOMEPAGE=	http://librep.sourceforge.net/

MODULES=	gettext
LIB_DEPENDS=	gdbm.2::databases/gdbm

MAINTAINER=	Robbie Gates <robbie@g7.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	OPSYS_VER VERSION

.if ${MACHINE_ARCH:Msparc64}
CFLAGS+=	-O0
.endif

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static
CONFIGURE_ARGS+= --without-gmp
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

.include <bsd.port.mk>
