COMMENT =	package manager for .NET
V =		6.6.1.2
DISTNAME =	nuget-${V}.bin
PKGNAME =	nuget-${V}
CATEGORIES =	devel
HOMEPAGE =	https://www.nuget.org/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

#MIT
PERMIT_PACKAGE =	Yes

SITES =		https://download.mono-project.com/sources/nuget/
EXTRACT_SUFX =	.tar.xz
MODULES =	lang/mono
NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	mkdir -p ${PREFIX}/share/nuget
	${INSTALL_DATA} ${WRKSRC}/nuget.exe ${PREFIX}/share/nuget/
	${SUBST_CMD} -c -m 755 ${FILESDIR}/nuget.sh ${PREFIX}/bin/nuget

.include <bsd.port.mk>
