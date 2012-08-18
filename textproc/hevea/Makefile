# $OpenBSD: Makefile,v 1.19 2012/08/18 22:47:00 avsm Exp $

COMMENT=	LaTeX to html translator

CATEGORIES=	textproc print

# Q Licence 1.0 + LGPL for parts of the runtime
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c m 

BUILD_DEPENDS=	lang/ocaml

DISTNAME =	hevea-1.10
MASTER_SITES =	http://para.inria.fr/~maranget/hevea/distri/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}-manual${EXTRACT_SUFX}

MAINTAINER=	Marc Espie <espie@openbsd.org>
HOMEPAGE=	http://para.inria.fr/%7Emaranget/hevea/

NO_REGRESS =	Yes

MODULES +=	lang/ocaml

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
MAKE_FLAGS +=	TARGET=opt
FAKE_FLAGS +=	TARGET=opt
.else
MAKE_FLAGS +=	TARGET=byte
FAKE_FLAGS +=	TARGET=byte
.endif

# Beware! this works only because the manual is flat
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hevea
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}-manual/* ${PREFIX}/share/doc/hevea


.include <bsd.port.mk>
