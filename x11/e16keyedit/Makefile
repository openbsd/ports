# $OpenBSD: Makefile,v 1.2 2002/12/29 20:31:41 fgsch Exp $

COMMENT=		"edit enlightenment's keybindings"

DISTNAME=		e16keyedit-0.2
CATEGORIES=     	x11

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
