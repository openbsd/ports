# $OpenBSD: Makefile,v 1.8 2002/03/21 21:25:56 espie Exp $

COMMENT=		"window manager theme utility"

DISTNAME=		wmtheme-1.3
CATEGORIES=		x11 
NEED_VERSION=		1.515

HOMEPAGE=		http://wmtheme.sourceforge.net/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	wmtheme

NO_REGRESS=		Yes

LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+
USE_GMAKE=		Yes
EXTRA_THEMES=		gotheme ortheme

FAKE_FLAGS+=		prefix=${PREFIX} DESTDIR=${WRKINST}

post-install:
.for i in ${EXTRA_THEMES}
	cd ${PREFIX}/bin; ln -sf wmtheme $i;
	cd ${PREFIX}/man/man1; ln -sf wmtheme.1.gz $i.1.gz
.endfor

.include <bsd.port.mk>
