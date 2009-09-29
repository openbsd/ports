# $OpenBSD: Makefile,v 1.1.1.1 2009/09/29 20:06:24 landry Exp $

COMMENT =	Thunar vcs integration plugin

XFCE_VERSION =	0.1.0
THUNAR_PLUGIN =	thunar-vcs-plugin

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	x11/xfce4

# --as-needed fucks linking with pthread
CONFIGURE_ARGS +=	--disable-linker-opts
# correctly find bindtextdomain
CONFIGURE_ENV +=	LIBS='-liconv'

LIB_DEPENDS =	thunar-vfs-1::x11/xfce4/thunar \
		svn_client-1,svn_delta-1,svn_diff-1,svn_fs-1,svn_fs_base-1,svn_fs_fs-1,svn_fs_util-1,svn_ra-1,svn_ra_local-1,svn_ra_neon-1,svn_ra_svn-1,svn_repos-1,svn_subr-1,svn_wc-1::devel/subversion

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender apr-1 aprutil-1 asn1
WANTLIB += atk-1.0 c cairo crypto db execinfo exo-0.3 expat fam
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gssapi gthread-2.0
WANTLIB += gtk-x11-2.0 jpeg krb5 m neon pcre pixman-1 png pthread
WANTLIB += pthread-stubs rpcsvc sasl2 sqlite3 ssl startup-notification-1
WANTLIB += stdc++ xcb xcb-atom xcb-aux xcb-event xfce4util z

.include <bsd.port.mk>
