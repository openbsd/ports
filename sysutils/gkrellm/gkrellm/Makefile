# $OpenBSD: Makefile,v 1.14 2004/10/16 16:33:56 sturm Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"single process stack of system monitors for GTK+2 (server)"
COMMENT-client=	"single process stack of system monitors for GTK+2"

V=		2.2.4
DISTNAME=	gkrellm-${V}
PKGNAME=	gkrellm-server-${V}
PKGNAME-client=	gkrellm-${V}
CATEGORIES=	sysutils sysutils/gkrellm

HOMEPAGE=	http://www.gkrellm.net/
MAINTAINER=	Peter Hessler <spambox@theapt.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://web.wt.net/~billw/gkrellm/
EXTRACT_SUFX=	.tar.bz2

PSEUDO_FLAVORS=	no_client
FLAVOR?=

MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_client}
MULTI_PACKAGES+=-client
.endif
SUBPACKAGE?=

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gthread-2.0.0.0::devel/glib2

NO_REGRESS=	Yes
USE_GMAKE=	Yes

ALL_TARGET=	openbsd
INSTALL_TARGET=	install_openbsd

.if ${MULTI_PACKAGES:M-client}
USE_X11=	Yes
.  if !defined(PACKAGING) || !empty(SUBPACKAGE)
LIB_DEPENDS+=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
.  endif
.else
WRKBUILD=	${WRKDIST}/server
.endif

pre-configure:
	@perl -pi -e "s|%%SYSCONFDIR%%|${SYSCONFDIR}|g" \
		${WRKSRC}/server/gkrellmd.h

.include <bsd.port.mk>
