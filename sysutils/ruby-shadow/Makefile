COMMENT =		module to access shadow passwords

DISTNAME =		ruby-shadow-2.5.0
PKGNAME =		${DISTNAME:S/ruby-//}
REVISION =		5
CATEGORIES =		sysutils

MASTER_SITES0=  https://github.com/apalmblad/ruby-shadow/commit/
PATCHFILES=     ruby-shadow-taint-fix{70330521b99e84c8f7445c213dfde0768f45a690}.patch:0 \
		ruby-shadow-config-fix{eab4aba3f5e06ea8f124d3e5ff6b3fa88c4807cd}.patch:0
PATCH_DIST_STRIP=       -p1

# PD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS = 	sysutils/e2fsprogs

WANTLIB =		pthread

CONFIGURE_STYLE =	ruby gem ext

.include <bsd.port.mk>
