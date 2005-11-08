# $OpenBSD: Makefile,v 1.1.1.1 2005/11/08 10:41:33 espie Exp $
COMMENT="display chm files"
CATEGORIES=devel textproc x11

HOMEPAGE=http://xchm.sourceforge.net/
MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=xchm/}

DISTNAME=xchm-0.9.8

#GPL
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes

LIB_DEPENDS=	chm::devel/chmlib \
		wx_gtk:wxWidgets-gtk-*-!gtk2:x11/wxWidgets/gtk

WANTLIB=	m c stdc++ pthread

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	WXCONFIG=${LOCALBASE}/bin/wxgtk-2.4-config
CONFIGURE_ENV+= LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
