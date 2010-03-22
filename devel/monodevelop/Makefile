# $OpenBSD: Makefile,v 1.1.1.1 2010/03/22 21:24:02 robert Exp $

COMMENT=	IDE for the .NET platform
DISTNAME=	monodevelop-2.2.2
CATEGORIES=	devel lang
MASTER_SITES=	http://ftp.novell.com/pub/mono/sources/monodevelop/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://monodevelop.com/

# GPL v2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=	Yes

MODULES=	lang/mono
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::lang/mono \
		::devel/mono-addins \
		::shells/bash \
		::x11/gnome/mono-gnome \
		::x11/mono-gtk2

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	--disable-update-mimedb \
		--enable-aspnet \
		--enable-aspnetedit

DLLMAP_FILES=	src/core/Mono.Texteditor/Mono.TextEditor.PopupWindow/TooltipWindow.cs \
		src/core/MonoDevelop.Projects/MonoDevelop.Projects.dll.config \
		src/addins/GnomePlatform/GnomePlatform.dll.config \
		src/addins/VersionControl/MonoDevelop.VersionControl.Subversion/MonoDevelop.VersionControl.Subversion.dll.config \
		src/addins/VersionControl/MonoDevelop.VersionControl.Subversion/MonoDevelop.VersionControl.Subversion/LibSvnClient.cs \
		src/addins/VersionControl/MonoDevelop.VersionControl.Subversion/MonoDevelop.VersionControl.Subversion/LibApr.cs \
		src/addins/MonoDevelop.GtkCore/libsteticui/Metacity/Theme.cs \
		src/addins/MonoDevelop.GtkCore/libsteticui/Metacity/Preview.cs \
		src/addins/MonoDevelop.GtkCore/libsteticui/libsteticui.dll.config \
		src/addins/MonoDevelop.GtkCore/libstetic/libstetic.dll.config

BASH_SCRIPTS=	mdtool.in monodevelop.in \
		src/addins/MonoDevelop.Autotools/templates/configure.template

pre-configure:
	for i in ${BASH_SCRIPTS}; do \
		perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/$${i}; \
	done

.include <bsd.port.mk>
