# $OpenBSD: Makefile,v 1.15 2021/10/31 20:30:03 ajacoutot Exp $

V =		1.7
COMMENT =	open source drawing/editing program modeled after Paint.NET
DISTNAME =	pinta-${V}
CATEGORIES =	graphics x11

HOMEPAGE =	http://pinta-project.com/

# MIT
PERMIT_PACKAGE =	Yes

# These tarballs have a proper configure. GH checkout does not...
MASTER_SITES =	https://github.com/PintaProject/Pinta/releases/download/${V}/

MODULES =	lang/mono \
		textproc/intltool

BUILD_DEPENDS =	devel/mono-addins \
		x11/mono-gtk2

RUN_DEPENDS =	devel/mono-addins \
		devel/desktop-file-utils \
		x11/gtk+3,-guic \
		x11/mono-gtk2

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =	Yes

DLLMAP_FILES =	Pinta.Docking/Pinta.Docking.dll.config

.include <bsd.port.mk>
