# $OpenBSD: Makefile,v 1.2 2003/11/18 18:03:30 sturm Exp $

COMMENT=	"single process stack of system monitors for GTK+2"

DISTNAME=	gkrellm-2.1.21
CATEGORIES=	sysutils sysutils/gkrellm

HOMEPAGE=	http://www.gkrellm.net/
MAINTAINER=	Peter Hessler <spambox@theapt.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gthread-2.0.0.0::devel/glib2 \
		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}
NO_REGRESS=	Yes
USE_GMAKE=	Yes

MASTER_SITES=	http://web.wt.net/~billw/gkrellm/
EXTRACT_SUFX=	.tar.bz2

USE_X11=	Yes
ALL_TARGET=	openbsd
INSTALL_TARGET=	install_openbsd

post-patch:
	@perl -pi -e "s|%%SYSCONFDIR%%|${SYSCONFDIR}|g" \
		${WRKSRC}/server/gkrellmd.h

.include <bsd.port.mk>
