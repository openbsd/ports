COMMENT =		module to access shadow passwords

DISTNAME =		ruby-shadow-2.5.0
PKGNAME =		${DISTNAME:S/ruby-//}
REVISION =		5
CATEGORIES =		sysutils

SITES.github =		https://github.com/apalmblad/ruby-shadow/commit/
PATCHFILES.github =	ruby-shadow-taint-fix{70330521b99e84c8f7445c213dfde0768f45a690}.patch \
			ruby-shadow-config-fix{eab4aba3f5e06ea8f124d3e5ff6b3fa88c4807cd}.patch
PATCH_DIST_STRIP=       -p1

# PD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS = 	sysutils/e2fsprogs

WANTLIB =		pthread

CONFIGURE_STYLE =	ruby gem ext

.include <bsd.port.mk>
