# $OpenBSD: Makefile,v 1.9 2012/08/18 22:28:53 avsm Exp $

COMMENT=	Objective Caml library to parse RSS 2.0
CATEGORIES=	textproc

V=		2.0
DISTNAME=	ocamlrss-${V}
PKGNAME=	ocaml-rss-${V}
MASTER_SITES=	http://zoggy.github.com/ocamlrss/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://zoggy.github.com/ocamlrss/

# LGPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml

USE_GMAKE =	yes

RUN_DEPENDS =	textproc/ocaml-xmlm
BUILD_DEPENDS =	${RUN_DEPENDS} sysutils/findlib

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET =		all
INSTALL_TARGET =	install_all
.else
ALL_TARGET =		byte
INSTALL_TARGET =	install_byte
.endif


.include <bsd.port.mk>
