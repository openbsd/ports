# $OpenBSD: Makefile,v 1.1.1.1 2001/11/15 19:29:10 naddy Exp $

COMMENT=		"edit enlightenment's keybindings"

DISTNAME=		e16keyedit-0.2
CATEGORIES=     	x11
NEED_VERSION=		1.492

MAINTAINER=		Nick Nauwelaerts <nick@wanadoo.be>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.enlightenment.org/enlightenment/e16utils/

LIB_DEPENDS=		gdk_imlib.19::graphics/imlib \
			gtk.1.2,gdk.1.2::x11/gtk+
RUN_DEPENDS=		:enlightenment-0.16*:x11/enlightenment

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
