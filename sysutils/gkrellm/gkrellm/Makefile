# $OpenBSD: Makefile,v 1.30 2007/01/04 20:19:54 steven Exp $

SHARED_ONLY=	Yes

COMMENT-main=	"single process stack of system monitors for GTK+2 (server)"
COMMENT-client=	"single process stack of system monitors for GTK+2"

V=		2.2.4
DISTNAME=	gkrellm-${V}
PKGNAME-main=	gkrellm-server-${V}p6
PKGNAME-client=	gkrellm-${V}p7
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

MULTI_PACKAGES=	-main
.if !${FLAVOR:L:Mno_client}
MULTI_PACKAGES+=-client
USE_X11=	Yes
.else
WRKBUILD=	${WRKDIST}/server
.endif

LIB_DEPENDS=		glib-2.0,gmodule-2.0,gthread-2.0::devel/glib2

LIB_DEPENDS-client=	${LIB_DEPENDS} \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
WANTLIB-client=		${WANTLIB} ICE SM X11 crypto fontconfig freetype \
			Xext Xrender glitz png z \
			atk-1.0 gobject-2.0 m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 ssl cairo

NO_REGRESS=	Yes
USE_GMAKE=	Yes

ALL_TARGET=	openbsd
INSTALL_TARGET=	install_openbsd

pre-configure:
	@perl -pi -e "s|%%SYSCONFDIR%%|${SYSCONFDIR}|g" \
		${WRKSRC}/server/gkrellmd.h

.include <bsd.port.mk>
