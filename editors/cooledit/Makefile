# $OpenBSD: Makefile,v 1.5 2001/05/06 00:29:01 lebel Exp $

COMMENT=	"easy to use, graphical editor"

CATEGORIES=	editors
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE= 	http://cooledit.sourceforge.net/ 
DISTNAME=	cooledit-3.17.2
NEED_VERSION=	1.402

MAINTAINER=	Marc Espie <espie@openbsd.org>

FLAVORS=	python
FLAVOR?=

.if ${FLAVOR:L:Mpython}
BUILD_DEPENDS+=	python:python-1.5.2-!threads:lang/python15,
RUN_DEPENDS+=	python:python-1.5.2-!threads:lang/python15,
.else
CONFIGURE_ENV+=NOPYTHON=Yes
.endif

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		XTERM_CMD=xterm
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static --disable-mail-author

PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_CDROM=Yes

.include <bsd.port.mk>
