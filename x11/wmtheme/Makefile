# $OpenBSD: Makefile,v 1.15 2006/09/18 10:21:49 espie Exp $

COMMENT=		"window manager theme utility"

DISTNAME=		wmtheme-1.3.2
CATEGORIES=		x11 

HOMEPAGE=		http://wmtheme.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wmtheme/}

NO_REGRESS=		Yes

LIB_DEPENDS=		gtk.>=1.2,gdk.>=1.2::x11/gtk+
USE_GMAKE=		Yes
EXTRA_THEMES=		gotheme ortheme

FAKE_FLAGS+=		prefix=${PREFIX} DESTDIR=${WRKINST}

post-install:
.for i in ${EXTRA_THEMES}
	cd ${PREFIX}/bin; ln -sf wmtheme $i;
	cd ${PREFIX}/man/man1; ln -sf wmtheme.1.gz $i.1.gz
.endfor

.include <bsd.port.mk>
