COMMENT =		MDNS/DNS-SD daemon

GH_ACCOUNT =		haesbaert
GH_PROJECT =		mdnsd
GH_TAGNAME =		0.9
PKGNAME =		openmdns-${GH_TAGNAME}

SHARED_LIBS +=		mdns 0.0 # 0.1

CATEGORIES =		net

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE =		https://www.haesbaert.org/openmdns/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=		c event util

MAKE_FLAGS =		BINDIR="${TRUEPREFIX}/bin" \
			MANDIR="${TRUEPREFIX}/man/man" \
			LIBDIR="${TRUEPREFIX}/lib"

NO_TEST =		Yes

pre-configure:
	printf 'major=%d\nminor=%d' \
		${LIBmdns_VERSION:R} ${LIBmdns_VERSION:E} \
		> ${WRKDIST}/libmdns/shlib_version

.include <bsd.port.mk>
