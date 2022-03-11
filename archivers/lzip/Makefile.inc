# This directory contain every lzip project.
# lzd isn't included due to the educational purpose of this and the author
# doesn't recommend the use of lzd in production.

CATEGORIES =		archivers

MASTER_SITES ?=		${MASTER_SITE_SAVANNAH:=lzip/} \
			${MASTER_SITE_SAVANNAH:=lzip/old/}
# Upstream also releases the tarballs compressed with gz but to use the
# lz version of the tarballs for the lzip project give us a quick and simple
# test to detect problems with the lzip format on every OpenBSD platform.
EXTRACT_SUFX ?=		.tar.lz

DIST_SUBDIR =		lzip

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	CC="${CC}" CXX="${CXX}" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}" \
			--prefix=${PREFIX} \
			--infodir=${PREFIX}/info \
			--mandir=${PREFIX}/man

.ifndef DEBUG
INSTALL_TARGET ?=	install-strip
.endif

TEST_TARGET =		check
