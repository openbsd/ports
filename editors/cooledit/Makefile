# $OpenBSD: Makefile,v 1.3 2001/02/18 22:47:57 brad Exp $

CATEGORIES=		editors
MASTER_SITES=		${HOMEPAGE}
HOMEPAGE= 	http://cooledit.sourceforge.net/ 
DISTNAME=	cooledit-3.17.2

MAINTAINER=	Marc Espie <espie@openbsd.org>

FLAVORS=	python
FLAVOR?=

.if ${FLAVOR:L:Mpython}
BUILD_DEPENDS+=	python::lang/python15
RUN_DEPENDS+=	python::lang/python15
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
