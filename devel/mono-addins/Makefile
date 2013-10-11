# $OpenBSD: Makefile,v 1.11 2013/10/11 23:48:24 naddy Exp $

COMMENT=	framework for creating extensible applications

DISTNAME=	mono-addins-0.6.2
CATEGORIES=	devel lang

HOMEPAGE=	http://monoaddins.codeplex.com/

# MIT X11, MPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://download.mono-project.com/sources/mono-addins/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

MODULES=	lang/mono
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/mono-gtk2

CONFIGURE_STYLE=gnu

pre-configure:
	perl -pi -e 's,^prefix=.*,prefix=\@prefix\@,g' \
		${WRKSRC}/Mono.Addins/mono-addins.pc.in \
		${WRKSRC}/Mono.Addins.Gui/mono-addins-gui.pc.in \
		${WRKSRC}/Mono.Addins.MSBuild/mono-addins-msbuild.pc.in \
		${WRKSRC}/Mono.Addins.Setup/mono-addins-setup.pc.in

.include <bsd.port.mk>
