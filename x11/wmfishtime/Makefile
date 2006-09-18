# $OpenBSD: Makefile,v 1.9 2006/09/18 10:21:49 espie Exp $

COMMENT=		'wm-dockapp; clock application with clock, date and fish'

DISTNAME=		wmfishtime-1.23
CATEGORIES=     	x11 x11/windowmaker

HOMEPAGE=		http://www.ne.jp/asahi/linux/timecop/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m

MASTER_SITES=		${HOMEPAGE}software/

LIB_DEPENDS=		gtk.>=1,gdk.>=1::x11/gtk+

MAKE_FLAGS=		CC="${CC}" \
			CFLAGS="${CFLAGS} -Wall `gtk-config --cflags`" \
			LIBS="`gtk-config --libs`"

USE_X11=		Yes
NO_REGRESS=		Yes

do-install:
	$(INSTALL_PROGRAM) $(WRKBUILD)/wmfishtime $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKBUILD)/wmfishtime.1 $(PREFIX)/man/man1

.include <bsd.port.mk>
