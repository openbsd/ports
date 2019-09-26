# $OpenBSD: Makefile,v 1.30 2019/09/26 09:46:10 chrisz Exp $

COMMENT=	LaTeX to html translator

CATEGORIES=	textproc print

# Q Licence 1.0 + LGPL for parts of the runtime
PERMIT_PACKAGE=	Yes
WANTLIB=		c m pthread

DISTNAME =	hevea-2.32
REVISION =	1
MASTER_SITES =	http://para.inria.fr/~maranget/hevea/distri/ \
		https://spacehopper.org/mirrors/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}-manual${EXTRACT_SUFX}

MAINTAINER=	Marc Espie <espie@openbsd.org>
HOMEPAGE=	http://para.inria.fr/%7Emaranget/hevea/

NO_TEST =	Yes

MODULES +=	lang/ocaml

BUILD_DEPENDS = devel/ocaml-ocamlbuild

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
