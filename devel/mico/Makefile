# $OpenBSD: Makefile,v 1.5 2004/07/31 21:17:22 naddy Exp $

COMMENT=	"free and complete CORBA-compliant implementation"

DISTNAME=	mico-2.3.6
CATEGORIES=	devel

HOMEPAGE=	http://www.mico.org/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Andre S. Barbosa <andre@ravel.ufrj.br>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin

FAKE_FLAGS=		prefix="${WRKINST}${PREFIX}"
WRKDIST=        	${WRKDIR}/mico
NO_REGRESS=		Yes

FLAVORS=ssl qt gtk tcl
FLAVOR?=

.if ${FLAVOR:L:Mssl}
CONFIGURE_ARGS+=	--with-ssl
.endif

.if ${FLAVOR:L:Mqt}
LIB_DEPENDS+=		qt.2::x11/qt2
CONFIGURE_ARGS+=	--with-qt
.endif

.if ${FLAVOR:L:Mgtk}
LIB_DEPENDS+=		gtk.1.2::x11/gtk+
CONFIGURE_ARGS+=	--with-gtk
.endif

.if ${FLAVOR:L:Mtcl}
LIB_DEPENDS+=		tcl.8::lang/tcl
CONFIGURE_ARGS+=	--with-tcl
.endif

.include <bsd.port.mk>
