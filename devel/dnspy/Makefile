COMMENT =	.NET debugger and assembly editor
V =		6.5.0
DISTNAME =	dnSpy-netframework
PKGNAME =	dnspy-${V}
CATEGORIES =	devel
HOMEPAGE =	https://github.com/0xd4d/dnSpy
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/dnSpyEx/dnSpy/releases/download/v${V}/
EXTRACT_SUFX =	.zip
DIST_SUBDIR =	dnspy-${V}
MODULES =	lang/mono
NO_BUILD =	Yes
NO_TEST =	Yes
WRKDIST =	${WRKDIR}

do-install:
	mkdir -p ${PREFIX}/share/dnspy
	cp -R ${WRKSRC}/dnSpy.Console.* ${WRKSRC}/bin ${PREFIX}/share/dnspy/
	${SUBST_CMD} -c -m 755 ${FILESDIR}/dnspy.sh ${PREFIX}/bin/dnspy

.include <bsd.port.mk>
