# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:11 espie Exp $

COMMENT=	IDE for the .NET platform
DISTNAME=	monodevelop-2.4.2
CATEGORIES=	devel lang
MASTER_SITES=	http://ftp.novell.com/pub/mono/sources/monodevelop/
EXTRACT_SUFX=	.tar.bz2

REVISION=	2

HOMEPAGE=	http://monodevelop.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes
USE_GROFF=	Yes

# XXX
# System.UnauthorizedAccessException:
#     Access to the path "$HOME/.config/.mono" is denied.
NO_SYSTRACE=	Yes

MODULES=	lang/mono
BUILD_DEPENDS=	${RUN_DEPENDS} \
		x11/gtk+2,-guic
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info>=0.21 \
		devel/mono-addins \
		shells/bash \
		x11/gnome/mono-gnome \
		devel/ectags

# see patches/patch-src_addins_MonoDevelop_Autotools_SolutionDeployer_cs
RUN_DEPENDS+=	devel/gmake

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-update-mimedb \
		--disable-update-desktopdb \
		--enable-subversion \
		--enable-gnomeplatform

DLLMAP_FILES=	src/core/Mono.Texteditor/Mono.TextEditor.PopupWindow/TooltipWindow.cs \
		src/core/Mono.Texteditor/Mono.TextEditor.dll.config \
		src/core/MonoDevelop.Core/MonoDevelop.Core.dll.config \
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
	${SUBST_CMD} ${WRKSRC}/theme-icons/icon-theme-installer
	perl -pi -e 's,^prefix=.*,prefix=\@prefix\@,g' \
		${WRKSRC}/monodevelop.pc.in \
		${WRKSRC}/monodevelop-core-addins.pc.in

.include <bsd.port.mk>
