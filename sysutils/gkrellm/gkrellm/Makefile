# $OpenBSD: Makefile,v 1.23 2005/11/15 19:13:00 wilfried Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"single process stack of system monitors for GTK+2 (server)"
COMMENT-client=	"single process stack of system monitors for GTK+2"

V=		2.2.4
DISTNAME=	gkrellm-${V}
PKGNAME=	gkrellm-server-${V}p3
PKGNAME-client=	gkrellm-${V}p3
CATEGORIES=	sysutils sysutils/gkrellm

HOMEPAGE=	http://www.gkrellm.net/
MAINTAINER=	Peter Hessler <spambox@theapt.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=	c iconv intl kvm pthread

MASTER_SITES=	http://members.dslextreme.com/users/billw/gkrellm/
EXTRACT_SUFX=	.tar.bz2

PSEUDO_FLAVORS=	no_client
FLAVOR?=

MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_client}
MULTI_PACKAGES+=-client
.endif
SUBPACKAGE?=

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	glib-2.0.0.0,gmodule-2.0.0.0,gthread-2.0.0.0::devel/glib2

NO_REGRESS=	Yes
USE_GMAKE=	Yes

ALL_TARGET=	openbsd
INSTALL_TARGET=	install_openbsd

.if ${MULTI_PACKAGES:M-client}
USE_X11=	Yes
.  if !defined(PACKAGING) || !empty(SUBPACKAGE)
LIB_DEPENDS+=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
WANTLIB+=	ICE SM X11 atk-1.0.0.0 cairo crypto fontconfig freetype \
		gobject-2.0.0.0 m pango-1.0.0.0 pangocairo-1.0.0.0 \
		pangoft2-1.0.0.0 ssl
.  endif
.else
WRKBUILD=	${WRKDIST}/server
.endif

pre-configure:
	@perl -pi -e "s|%%SYSCONFDIR%%|${SYSCONFDIR}|g" \
		${WRKSRC}/server/gkrellmd.h

.include <bsd.port.mk>
