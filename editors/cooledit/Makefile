# $OpenBSD: Makefile,v 1.6 2001/06/09 20:27:39 espie Exp $

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
IGNORE="Bad flavor choice"
.endif
.if ${FLAVOR:L:Mpython}
BUILD_DEPENDS+=	python1.5:python-1.5.2-!threads:lang/python15,
RUN_DEPENDS+=	python1.5:python-1.5.2-!threads:lang/python15,
.elif ${FLAVOR:L:Mpython2}
BUILD_DEPENDS+=	python2.1:python-2.1-!threads:lang/python,
RUN_DEPENDS+=	python2.1:python-2.1-!threads:lang/python,
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
