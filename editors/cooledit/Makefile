# $OpenBSD: Makefile,v 1.7 2001/08/09 21:05:28 naddy Exp $

COMMENT=	"easy to use, graphical editor"

CATEGORIES=	editors
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE= 	http://cooledit.sourceforge.net/ 
DISTNAME=	cooledit-3.17.2
NEED_VERSION=	1.402

MAINTAINER=	Marc Espie <espie@openbsd.org>

FLAVORS=	python	python2
FLAVOR?=

.if ${FLAVOR:L:Mpython} && ${FLAVOR:L:Mpython2}
ERRORS+=	"Fatal: flavors 'python' and 'python2' conflict."
.endif
.if ${FLAVOR:L:Mpython}
BUILD_DEPENDS+=	python1.5:python-1.5.2-!threads:lang/python15,
RUN_DEPENDS+=	python1.5:python-1.5.2-!threads:lang/python15,
.elif ${FLAVOR:L:Mpython2}
BUILD_DEPENDS+=	python2.1:python-2.1-!threads:lang/python,
RUN_DEPENDS+=	python2.1:python-2.1-!threads:lang/python,
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
