# $OpenBSD: Makefile,v 1.1.1.1 2001/08/28 14:28:19 wilfried Exp $

COMMENT=		'wm-dockapp; clock application with clock, date and fish'

DISTNAME=		wmfishtime-1.23
CATEGORIES=     	x11 x11/windowmaker
NEED_VERSION=		1.448

HOMEPAGE=		http://www.ne.jp/asahi/linux/timecop/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}software/

LIB_DEPENDS=		gtk.1.2::x11/gtk+

MAKE_FLAGS=		CC="${CC}" \
			CFLAGS="${CFLAGS} -Wall `gtk-config --cflags`" \
			LIBS="`gtk-config --libs`"

USE_X11=		Yes

do-install:
	$(INSTALL_PROGRAM) $(WRKBUILD)/wmfishtime $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKBUILD)/wmfishtime.1 $(PREFIX)/man/man1

.include <bsd.port.mk>
