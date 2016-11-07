# $OpenBSD: Makefile,v 1.16 2016/11/07 10:36:50 sthen Exp $

BROKEN=		failing since mono update

COMMENT=	framework for creating extensible applications

DISTNAME=	mono-addins-1.2
CATEGORIES=	devel lang

HOMEPAGE=	http://www.mono-project.com/Mono.Addins

GH_ACCOUNT=	mono
GH_PROJECT=	mono-addins
GH_TAGNAME=	${DISTNAME}

# MIT X11, MPL
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes

MODULES=	lang/mono

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.14

BUILD_DEPENDS=	${RUN_DEPENDS} \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool
RUN_DEPENDS=	x11/mono-gtk2

CONFIGURE_STYLE=gnu

pre-configure:
	perl -pi -e 's,^prefix=.*,prefix=\@prefix\@,g' \
		${WRKSRC}/Mono.Addins/mono-addins.pc.in \
		${WRKSRC}/Mono.Addins.Gui/mono-addins-gui.pc.in \
		${WRKSRC}/Mono.Addins.MSBuild/mono-addins-msbuild.pc.in \
		${WRKSRC}/Mono.Addins.Setup/mono-addins-setup.pc.in
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
