COMMENT =		historical real-time strategy game data

DISTNAME =		0ad-${V}-unix-data
PKGNAME =		0ad-data-${V}

PKG_ARCH =		*

NO_BUILD =		Yes
NO_TEST =		Yes
EXTRACT_ONLY =		# empty

do-install:
	xz -T${MAKE_JOBS} -d <${FULLDISTDIR}/${DISTFILES} | ${TAR} -xf - \
	    -C ${PREFIX}/share/ -s ',0ad-${V}/binaries/data/,0ad/,g'

.include <bsd.port.mk>
