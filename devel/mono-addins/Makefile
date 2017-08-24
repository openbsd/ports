# $OpenBSD: Makefile,v 1.22 2017/08/24 20:12:25 ajacoutot Exp $

# need some kind of tls
ONLY_FOR_ARCHS =	${CLANG_ARCHS}

COMMENT=		framework for creating extensible applications

GH_ACCOUNT=		mono
GH_PROJECT=		mono-addins
GH_TAGNAME=		${GH_PROJECT}-1.3

CATEGORIES=		devel lang

HOMEPAGE=		http://www.mono-project.com/Mono.Addins

# MIT X11, MPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/mono

BUILD_DEPENDS=		x11/mono-gtk2
RUN_DEPENDS=		x11/mono-gtk2

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.14
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

pre-configure:
	perl -pi.beforesubst -e 's,^prefix=.*,prefix=\@prefix\@,g' \
		${WRKSRC}/Mono.Addins/mono-addins.pc.in \
		${WRKSRC}/Mono.Addins.Gui/mono-addins-gui.pc.in \
		${WRKSRC}/Mono.Addins.MSBuild/mono-addins-msbuild.pc.in \
		${WRKSRC}/Mono.Addins.Setup/mono-addins-setup.pc.in

do-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		./autogen.sh ${CONFIGURE_ARGS}

.include <bsd.port.mk>
