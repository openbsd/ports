# $OpenBSD: Makefile,v 1.9 2001/10/19 00:11:15 naddy Exp $

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
BUILD_DEPENDS+=	:python-2.*-!threads:lang/python,
RUN_DEPENDS+=	:python-2.*-!threads:lang/python,
.else
CONFIGURE_ENV+=	NOPYTHON=Yes
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
