COMMENT=		lightweight Emacs clone
DISTNAME=		zile-2.6.2
CATEGORIES=		editors
HOMEPAGE=		https://www.gnu.org/software/zile/

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses gee-0.8 gio-2.0 glib-2.0 gobject-2.0 intl
WANTLIB += pthread

MASTER_SITES=		${MASTER_SITE_GNU:=zile/}

LIB_DEPENDS=	devel/glib2 \
		devel/libgee

BUILD_DEPENDS=		devel/help2man \
			lang/vala

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
